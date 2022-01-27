#!/usr/bin/env python3
import os
import pdftotext
import re
from flask_cors import CORS
from flask import Flask, request, abort, jsonify, send_from_directory, send_file
from PyPDF2 import PdfFileReader, PdfFileWriter
from flask_ngrok import run_with_ngrok

basedir = os.path.abspath(os.path.dirname(__file__))

UPLOAD_DIRECTORY = os.path.join(basedir, "api_uploaded_files")
CURRENT_DIR = os.getcwd()

if not os.path.exists(UPLOAD_DIRECTORY):
    os.makedirs(UPLOAD_DIRECTORY)


api = Flask(__name__)
cors = CORS(api)

@api.route("/files")
def list_files():
    """Endpoint to list files on the server."""
    files = []
    for filename in os.listdir(CURRENT_DIR):
        path = os.path.join(CURRENT_DIR, filename)
        if os.path.isfile(path):
            files.append(filename)
    return jsonify(files)


@api.route("/files/<path:path>")
def get_file(path):
    """Download a file."""
    return send_from_directory(CURRENT_DIR, path, as_attachment=True)


@api.route("/files/processed/<path:path>/<string:cpf>", methods=["GET"])
def get_processed_file(path, cpf):
    """Download a processed file."""   
    pattern = re.compile(cpf)
    pdf_file_name = "holerite.pdf"
    with open(path, "rb") as file:
        pdf = pdftotext.PDF(file)
        counter = 0
        found_in = []
        for page in pdf:
            counter += 1
            if pattern.search(page):
                found_in.append(counter)
                inputpdf = PdfFileReader(open(pdf_file_name, "rb"))
                output = PdfFileWriter()
                output.addPage(inputpdf.getPage(counter - 1))
                with open("%s.pdf" %cpf,"wb") as outputStream:
                    output.write(outputStream)
                    return jsonify(counter)
                # with open("%s.pdf" %cpf,"wb") as binary_output:
                #     return send_file(binary_output, attachment_filename="%s.pdf" %cpf)    

    # Return 201 CREATED
                return "", 201   
        abort(400, "Resource not found")


@api.route("/files/<filename>", methods=["POST"])
def post_file(filename):
    """Upload a file."""

    if "/" in filename:
        # Return 400 BAD REQUEST
        abort(400, "no subdirectories allowed")

    with open(os.path.join(UPLOAD_DIRECTORY, filename), "wb") as fp:
        fp.write(request.data)

    # Return 201 CREATED
    return "", 201


if __name__ == "__main__":
    api.run(debug=True, port=8000)

