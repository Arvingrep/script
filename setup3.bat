@echo 安装robotframework-requests-0.3.9
cd robotframework-requests-0.3.9
python setup.py install
cd ..

@echo 安装robotframework-httplibrary
cd robotframework-httplibrary
python setup.py install
cd ..

@echo 安装webtest-master
cd webtest-master
python setup.py install
cd ..
easy_install jsonpointer
easy_install jsonpatch

pause