#include <QApplication>
#include <QObject>
#include <QQmlComponent>
#include <QQmlEngine>
#include <QQuickWindow>
#include <QSurfaceFormat>
#include <QLoggingCategory>
#include <QtQml>

int main(int argc, char *argv[])
{

    QApplication app(argc,argv);

    app.setOrganizationName("Test");
    app.setOrganizationDomain("test.com");

    // disable useless warnings
    QLoggingCategory::setFilterRules("qt.network.ssl.warning=false");

    // hide cursor in production builds
#ifndef QT_DEBUG
  //  QApplication::setOverrideCursor(Qt::BlankCursor);
#endif

    QQmlEngine engine;
    QQmlComponent *component = new QQmlComponent(&engine);

    QObject::connect(&engine, SIGNAL(quit()), QCoreApplication::instance(), SLOT(quit()));

    component->loadUrl(QUrl("qrc:///main.qml"));

    if (!component->isReady() ) {
        qWarning("%s", qPrintable(component->errorString()));
        return -1;
    }

    QObject *topLevel = component->create();
    QQuickWindow *window = qobject_cast<QQuickWindow *>(topLevel);

    QSurfaceFormat surfaceFormat = window->requestedFormat();
    window->setFormat(surfaceFormat);
    window->showFullScreen();

    int rc = app.exec();
    delete component;
    return rc;

}
