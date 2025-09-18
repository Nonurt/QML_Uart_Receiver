cmake_minimum_required(VERSION 3.16)

project(dali_gui_qml VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Core Quick SerialPort)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.5.3)

qt_add_executable(appdali_gui_qml
    main.cpp
)

qt_add_qml_module(appdali_gui_qml
    URI dali_gui_qml
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES dalicontroller.qml
        QML_FILES
        QML_FILES D4i_dali_page.qml
        QML_FILES D4i_uart_page.qml
        QML_FILES D4i_uart_page_old.qml
        SOURCES
        QML_FILES SelectPortPopup.qml
        SOURCES serialporthelper.h serialporthelper.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appdali_gui_qml PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appdali_gui_qml
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appdali_gui_qml
    PRIVATE Qt6::Quick
)
target_link_libraries(appdali_gui_qml PRIVATE Qt6::Core Qt6::Quick   Qt6::SerialPort)
target_link_libraries(appdali_gui_qml PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appdali_gui_qml
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
