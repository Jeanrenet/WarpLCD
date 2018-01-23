#include "CDataManager.h"
#include <QDebug>
#include <QDataStream>

CDataManager::CDataManager()
{
    //initialisation mémoire partagée
    m_sharedMemory.setKey("DataExchangeMemory");
    m_sharedMemory.attach(QSharedMemory::ReadOnly);

    //création timer
    connect(&m_timer,
            SIGNAL(timeout()),
            this,
            SLOT(readData()));

    //démarrage du timer
    m_timer.start(100);
}

void CDataManager::readData()
{
    if (m_sharedMemory.isAttached())
    {
        QByteArray data;
        m_sharedMemory.lock();
        data.setRawData((char*)m_sharedMemory.constData(), m_sharedMemory.size());
        m_sharedMemory.unlock();

        QDataStream stream(data);
        stream  >> m_temperature
                >> m_accelerometerX
                >> m_accelerometerY
                >> m_accelerometerZ
                >> m_magnetometerX
                >> m_magnetometerY
                >> m_magnetometerZ;

        qDebug() << m_accelerometerX <<m_accelerometerY << m_accelerometerZ;
        //mise à jour
        Q_EMIT dataChanged();
    }
    else
        m_sharedMemory.attach();

    Q_EMIT dataChanged();

}
