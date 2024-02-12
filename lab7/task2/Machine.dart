import 'Device.dart';

class Machine {
    
    List<Device> _devices = [];

    void addDevice(Device device) {
        _devices.add(device);
        print('device with id ' + device.getId().toString() + ' has been added');
    }

    void deleteDevice(Device device) {
        _devices.remove(device);
        print('device with id ' + device.getId().toString() + ' has been removed');
    }

  Device? findDeviceByModel(String model) {
    try {
      return _devices.firstWhere((device) => device.getModel() == model);
    } catch (e) {
      return null;
    }
  }

  Device? findDeviceById(int id) {
    try {
      return _devices.firstWhere((device) => device.getId() == id);
    } catch (e) {
      return null;
    }
  }

  double getTotalPrice() {
    return _devices.fold(0.0, (value, device) => value + device.getPrice());
  }

}