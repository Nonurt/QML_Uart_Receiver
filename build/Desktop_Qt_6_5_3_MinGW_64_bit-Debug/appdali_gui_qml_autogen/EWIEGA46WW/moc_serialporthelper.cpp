/****************************************************************************
** Meta object code from reading C++ file 'serialporthelper.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../serialporthelper.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'serialporthelper.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.5.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSserialporthelperENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSserialporthelperENDCLASS = QtMocHelpers::stringData(
    "serialporthelper",
    "portsChanged",
    "",
    "selectedPortChanged",
    "settingsChanged",
    "connectionChanged",
    "dataReceived",
    "message",
    "oldDriverResponseHistoryFull",
    "refreshPorts",
    "setPortSettings",
    "baudRate",
    "dataBits",
    "parity",
    "stopBits",
    "connectPort",
    "disconnectPort",
    "sendData",
    "data",
    "send_command_old_driver",
    "appendToOldDriverResponseHistory",
    "getParsedOldDriverValue",
    "index",
    "ports",
    "selectedPort",
    "isConnected"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSserialporthelperENDCLASS_t {
    uint offsetsAndSizes[52];
    char stringdata0[17];
    char stringdata1[13];
    char stringdata2[1];
    char stringdata3[20];
    char stringdata4[16];
    char stringdata5[18];
    char stringdata6[13];
    char stringdata7[8];
    char stringdata8[29];
    char stringdata9[13];
    char stringdata10[16];
    char stringdata11[9];
    char stringdata12[9];
    char stringdata13[7];
    char stringdata14[9];
    char stringdata15[12];
    char stringdata16[15];
    char stringdata17[9];
    char stringdata18[5];
    char stringdata19[24];
    char stringdata20[33];
    char stringdata21[24];
    char stringdata22[6];
    char stringdata23[6];
    char stringdata24[13];
    char stringdata25[12];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSserialporthelperENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSserialporthelperENDCLASS_t qt_meta_stringdata_CLASSserialporthelperENDCLASS = {
    {
        QT_MOC_LITERAL(0, 16),  // "serialporthelper"
        QT_MOC_LITERAL(17, 12),  // "portsChanged"
        QT_MOC_LITERAL(30, 0),  // ""
        QT_MOC_LITERAL(31, 19),  // "selectedPortChanged"
        QT_MOC_LITERAL(51, 15),  // "settingsChanged"
        QT_MOC_LITERAL(67, 17),  // "connectionChanged"
        QT_MOC_LITERAL(85, 12),  // "dataReceived"
        QT_MOC_LITERAL(98, 7),  // "message"
        QT_MOC_LITERAL(106, 28),  // "oldDriverResponseHistoryFull"
        QT_MOC_LITERAL(135, 12),  // "refreshPorts"
        QT_MOC_LITERAL(148, 15),  // "setPortSettings"
        QT_MOC_LITERAL(164, 8),  // "baudRate"
        QT_MOC_LITERAL(173, 8),  // "dataBits"
        QT_MOC_LITERAL(182, 6),  // "parity"
        QT_MOC_LITERAL(189, 8),  // "stopBits"
        QT_MOC_LITERAL(198, 11),  // "connectPort"
        QT_MOC_LITERAL(210, 14),  // "disconnectPort"
        QT_MOC_LITERAL(225, 8),  // "sendData"
        QT_MOC_LITERAL(234, 4),  // "data"
        QT_MOC_LITERAL(239, 23),  // "send_command_old_driver"
        QT_MOC_LITERAL(263, 32),  // "appendToOldDriverResponseHistory"
        QT_MOC_LITERAL(296, 23),  // "getParsedOldDriverValue"
        QT_MOC_LITERAL(320, 5),  // "index"
        QT_MOC_LITERAL(326, 5),  // "ports"
        QT_MOC_LITERAL(332, 12),  // "selectedPort"
        QT_MOC_LITERAL(345, 11)   // "isConnected"
    },
    "serialporthelper",
    "portsChanged",
    "",
    "selectedPortChanged",
    "settingsChanged",
    "connectionChanged",
    "dataReceived",
    "message",
    "oldDriverResponseHistoryFull",
    "refreshPorts",
    "setPortSettings",
    "baudRate",
    "dataBits",
    "parity",
    "stopBits",
    "connectPort",
    "disconnectPort",
    "sendData",
    "data",
    "send_command_old_driver",
    "appendToOldDriverResponseHistory",
    "getParsedOldDriverValue",
    "index",
    "ports",
    "selectedPort",
    "isConnected"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSserialporthelperENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       7,  128, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   98,    2, 0x06,    8 /* Public */,
       3,    0,   99,    2, 0x06,    9 /* Public */,
       4,    0,  100,    2, 0x06,   10 /* Public */,
       5,    0,  101,    2, 0x06,   11 /* Public */,
       6,    1,  102,    2, 0x06,   12 /* Public */,
       8,    0,  105,    2, 0x06,   14 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       9,    0,  106,    2, 0x02,   15 /* Public */,
      10,    4,  107,    2, 0x02,   16 /* Public */,
      15,    0,  116,    2, 0x02,   21 /* Public */,
      16,    0,  117,    2, 0x02,   22 /* Public */,
      17,    1,  118,    2, 0x02,   23 /* Public */,
      19,    0,  121,    2, 0x02,   25 /* Public */,
      20,    1,  122,    2, 0x02,   26 /* Public */,
      21,    1,  125,    2, 0x102,   28 /* Public | MethodIsConst  */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::QString,   11,   12,   13,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   18,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::QString, QMetaType::Int,   22,

 // properties: name, type, flags
      23, QMetaType::QStringList, 0x00015001, uint(0), 0,
      24, QMetaType::QString, 0x00015103, uint(1), 0,
      11, QMetaType::QString, 0x00015001, uint(2), 0,
      12, QMetaType::QString, 0x00015001, uint(2), 0,
      13, QMetaType::QString, 0x00015001, uint(2), 0,
      14, QMetaType::QString, 0x00015001, uint(2), 0,
      25, QMetaType::Bool, 0x00015001, uint(3), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject serialporthelper::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSserialporthelperENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSserialporthelperENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSserialporthelperENDCLASS_t,
        // property 'ports'
        QtPrivate::TypeAndForceComplete<QStringList, std::true_type>,
        // property 'selectedPort'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'baudRate'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'dataBits'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'parity'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'stopBits'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'isConnected'
        QtPrivate::TypeAndForceComplete<bool, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<serialporthelper, std::true_type>,
        // method 'portsChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'selectedPortChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'settingsChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'connectionChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'dataReceived'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'oldDriverResponseHistoryFull'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'refreshPorts'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'setPortSettings'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'connectPort'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'disconnectPort'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'sendData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'send_command_old_driver'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'appendToOldDriverResponseHistory'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'getParsedOldDriverValue'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>
    >,
    nullptr
} };

void serialporthelper::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<serialporthelper *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->portsChanged(); break;
        case 1: _t->selectedPortChanged(); break;
        case 2: _t->settingsChanged(); break;
        case 3: _t->connectionChanged(); break;
        case 4: _t->dataReceived((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 5: _t->oldDriverResponseHistoryFull(); break;
        case 6: _t->refreshPorts(); break;
        case 7: _t->setPortSettings((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[4]))); break;
        case 8: _t->connectPort(); break;
        case 9: _t->disconnectPort(); break;
        case 10: _t->sendData((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 11: _t->send_command_old_driver(); break;
        case 12: _t->appendToOldDriverResponseHistory((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 13: { QString _r = _t->getParsedOldDriverValue((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (serialporthelper::*)();
            if (_t _q_method = &serialporthelper::portsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (serialporthelper::*)();
            if (_t _q_method = &serialporthelper::selectedPortChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (serialporthelper::*)();
            if (_t _q_method = &serialporthelper::settingsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (serialporthelper::*)();
            if (_t _q_method = &serialporthelper::connectionChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (serialporthelper::*)(const QString & );
            if (_t _q_method = &serialporthelper::dataReceived; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (serialporthelper::*)();
            if (_t _q_method = &serialporthelper::oldDriverResponseHistoryFull; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
    }else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<serialporthelper *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QStringList*>(_v) = _t->availablePorts(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->selectedPort(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->baudRate(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->dataBits(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->parity(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->stopBits(); break;
        case 6: *reinterpret_cast< bool*>(_v) = _t->isConnected(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<serialporthelper *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 1: _t->setSelectedPort(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *serialporthelper::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *serialporthelper::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSserialporthelperENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int serialporthelper::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 14)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 14;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void serialporthelper::portsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void serialporthelper::selectedPortChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void serialporthelper::settingsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void serialporthelper::connectionChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void serialporthelper::dataReceived(const QString & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void serialporthelper::oldDriverResponseHistoryFull()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}
QT_WARNING_POP
