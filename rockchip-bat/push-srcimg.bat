@echo off
adb root
adb remount
adb push C:\Users\Administrator\Desktop\imgSrc\in0w1280-h720-rgb565.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in0w1280-h720-nv12.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in0w1280-h720-rgba8888.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in1w1280-h720-rgba8888.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in0w160-h90-rgba8888.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in0w160-h90-rgb565.bin data
adb push C:\Users\Administrator\Desktop\imgSrc\in0w160-h90-nv12.bin data
::adb push C:\Users\Administrator\Desktop\imgSrc\in1w2560-h1440-nv12.bin data
