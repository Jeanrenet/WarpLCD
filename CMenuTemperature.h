#ifndef CMENUTEMPERATURE_H
#define CMENUTEMPERATURE_H

#include <QObject>
#include <QTimer>

class CMenuTemperature : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double  temperature  MEMBER m_temperature    NOTIFY temperatureChanged)
public:
    CMenuTemperature();

protected:
    Q_SIGNAL void temperatureChanged();

protected slots:

    void tot();
private:
    double  m_temperature;
    QTimer  m_timer;

};

#endif // CMENUTEMPERATURE_H
