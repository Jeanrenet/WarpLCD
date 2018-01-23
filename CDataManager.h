#ifndef CDATAMANAGER_H
#define CDATAMANAGER_H

#include <QObject>
#include <QTimer>
#include <QSharedMemory>

class CDataManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double  temperature      MEMBER m_temperature    NOTIFY dataChanged)
    Q_PROPERTY(double  accelerometerX   MEMBER m_accelerometerX NOTIFY dataChanged)
    Q_PROPERTY(double  accelerometerY   MEMBER m_accelerometerY NOTIFY dataChanged)
    Q_PROPERTY(double  accelerometerZ   MEMBER m_accelerometerZ NOTIFY dataChanged)
    Q_PROPERTY(double  magnetometerX    MEMBER m_magnetometerX  NOTIFY dataChanged)
    Q_PROPERTY(double  magnetometerY    MEMBER m_magnetometerY  NOTIFY dataChanged)
    Q_PROPERTY(double  magnetometerZ    MEMBER m_magnetometerZ  NOTIFY dataChanged)
public:
    CDataManager();

protected:
    Q_SIGNAL void dataChanged();

protected slots:
    void readData();

private:
    double          m_temperature;
    double          m_accelerometerX;
    double          m_accelerometerY;
    double          m_accelerometerZ;
    double          m_magnetometerX;
    double          m_magnetometerY;
    double          m_magnetometerZ;

    QTimer          m_timer;
    QSharedMemory   m_sharedMemory;
};

#endif // CDATAMANAGER_H
