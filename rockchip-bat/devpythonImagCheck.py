import os
import sys
import struct
import re
from PIL import Image
img_storage_path = "C:/Users/Administrator/img-storage/"
img_compare_path = "C:/Users/Administrator/img-compare/"
img_storage_list = os.listdir(img_storage_path)
img_compare_list = os.listdir(img_compare_path)


def strToint(str):
	#s = r'\,'
	#print(re.sub('[\r\n\t]', '', s))
	#result = re.match(r'\d',str)
	result = re.sub('[\(\)\,]','',str)
	return(int(result))

def get_FileSize(filePath):
	#filePath = unicode(filePath,'utf8')
	fsize = os.path.getsize(filePath)
	#fsize = fsize/float(1024*1024)
	return fsize	

# 字节bytes转化kb\m\g
def formatSize(bytes):
    try:
        bytes = float(bytes)
        kb = bytes / 1024
    except:
        print("传入的字节格式不对")
        return "Error"

    if kb >= 1024:
        M = kb / 1024
        if M >= 1024:
            G = M / 1024
            return "%fG" % (G)
        else:
            return "%fM" % (M)
    else:
        return "%fkb" % (kb)
		
		
def getDocSize(path):
    try:
        size = os.path.getsize(path)
        return formatSize(size)
    except Exception as err:
        print(err)	
		
	
		
def binCheck(fname,base,comp):
	f1 = open(base+fname,"rb")
	f2 = open(comp+fname,"rb")
	f1.seek(0, 0)
	f2.seek(0, 0)
	check = 0
	err_count = 0
	#print(comp+fname)
	f1size = get_FileSize(base+fname)
	f2size = get_FileSize(comp+fname)
	#f1.read()
	#f2.read()
	if(f1size!=f2size):
		print("err file %s"%base+fname)
	else:	
		i = 0
		while i<1:
			#data1 = str(data1, encoding = "utf-8")
			#print(data1 - data2)
			#data1 = int(data1, 16)
			#print(data1)
			data1 = struct.unpack('B', f1.read(1))
			data2 = struct.unpack('B', f2.read(1))
			#print(type(data2))
			data2 = strToint(str(data2))
			data1 = strToint(str(data1))
            if(abs(data2 - data1)>=1):
				err_count +=1
				check = 1
			i +=1
		if(check == 0):
			print("check ok! %s"%base+fname)
		if(check == 1):
			print("err file %s err num is %d"%(base+fname,err_count))
			
		#print("f1 size is %d\n"%(get_FileSize(base+fname)))
		#print("f2 size is %d\n"%(get_FileSize(comp+fname)))
	f1.close()
	f2.close()
	
     
def begin():	
	for bin in img_storage_list:
		if (bin in img_compare_list):
			print("check for %s"%(bin))
			binCheck(bin,img_storage_path,img_compare_path)
			 

begin()


















