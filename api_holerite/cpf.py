#!/bin/env python3
#-*- coding:utf-8 -*-

import pdftotext
import re
import sys
import os
from PyPDF2 import PdfFileReader, PdfFileWriter


cpf = sys.argv
pattern = re.compile(cpf[1])
pdf_file_name = "holerite.pdf"
with open(pdf_file_name, "rb") as file:
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
            with open("%s.pdf" %cpf[1],"wb") as outputStream:
                output.write(outputStream)
