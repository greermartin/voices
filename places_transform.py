import os
import lxml.etree

## Paths for unprocessed files, cleaned files and xsl stylesheet 
inputpath = "C:\\Users\\tfluhr\\Desktop\\Voices\\interviews_copy" # unprocessed
xsltfile = 'C:\\Users\\tfluhr\\Desktop\\Voices\\removeHash.xsl'   # stylesheet
outpath = 'C:\\Users\\tfluhr\\Desktop\\Voices\\interviews_clean' # output directory

#print(inputpath)

for  wd, subs, files in os.walk(inputpath):
    for filename in files:
        #print(filename)
        dom = lxml.etree.parse(inputpath + '\\' + filename)
        #print(dom)
        xslt = lxml.etree.parse(xsltfile)
        transform = lxml.etree.XSLT(xslt)
        newdom = transform(dom)
        infile = lxml.etree.tostring(newdom, pretty_print=True)
        outfile = open(outpath + '\\' + filename, 'wb')
        #print(outfile)
        outfile.write(infile)
