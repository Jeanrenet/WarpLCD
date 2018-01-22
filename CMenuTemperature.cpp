#include "CMenuTemperature.h"

CMenuTemperature::CMenuTemperature()
{
    connect(&m_timer, SIGNAL(timeout()), this, SLOT(tot()));
    m_timer.start(200);

    m_temperature = 0;
}

void CMenuTemperature::tot()
{
    m_temperature += 1;

    Q_EMIT temperatureChanged();
}
