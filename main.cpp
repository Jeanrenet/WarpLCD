#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "CMenuTemperature.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    //création des classes
    CMenuTemperature    *temperature = new CMenuTemperature;

    QQmlApplicationEngine engine;

    //export des classes vers QML
    engine.rootContext()->setContextProperty("Temperature", temperature);

    //load
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
