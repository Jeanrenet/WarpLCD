#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "CDataManager.h"

int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    //création des classes
    CDataManager    *dataManager = new CDataManager;

    QQmlApplicationEngine engine;

    //export des classes vers QML
    engine.rootContext()->setContextProperty("DataManager", dataManager);

    //load
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
