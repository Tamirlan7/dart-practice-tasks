import 'Machine.dart';
import 'Device.dart';


void main () {

  List<Device> devices = [
    Device(0, 'device1', 1100.0),
    Device(2, 'device2', 1200.0),
    Device(3, 'device3', 1300.0),
    Device(4, 'device4', 1500.0),
  ];

  Machine machine = Machine();
  devices.forEach((element) {
    machine.addDevice(element);
  });

  devices.remove(devices[1]);

  print(machine.findDeviceById(2)?.getModel());
  print(machine.findDeviceByModel('device1')?.getModel());

  print(machine.getTotalPrice());

}