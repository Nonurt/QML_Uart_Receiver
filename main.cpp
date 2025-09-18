#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "serialporthelper.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

      serialporthelper serialHelper;

    QQmlApplicationEngine engine;
      engine.rootContext()->setContextProperty("serialporthelper", &serialHelper);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("dali_gui_qml", "Main");

    return app.exec();
}
