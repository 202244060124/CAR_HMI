cmake_minimum_required(VERSION 3.20)
project(CarHmi)

# 找到Qt SDK
find_package(Qt6 COMPONENTS Quick Widgets REQUIRED)

# 设置支持构建QT信号槽和资源
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# 设置C++版本
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 指定编译器（使用Qt附带的MinGW）
set(CMAKE_C_COMPILER "D:/SoftwareInstallations/Qt/Tools/mingw1310_64/bin/gcc.exe")
set(CMAKE_CXX_COMPILER "D:/SoftwareInstallations/Qt/Tools/mingw1310_64/bin/g++.exe")

# # 设置Windows SDK路径
link_directories("D:/SoftwareInstallations/Microsoft/Windows Kits/10/Lib/10.0.22621.0/um/x64")

# 设置安装路径
set(CMAKE_INSTALL_PREFIX ${PROJECT_SOURCE_DIR}/../output)


add_executable(${PROJECT_NAME} 
    main.cpp
    qml.qrc
)


target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Quick Qt6::Widgets)

# 安装目标
install(TARGETS ${PROJECT_NAME} DESTINATION bin)
install(FILES main.cpp qml.qrc DESTINATION src)