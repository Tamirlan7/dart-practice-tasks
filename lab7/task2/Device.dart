class Device {
    late String _model;
    late int _id;
    late double _price;

    Device(id, model, price) {
        _model = model;
        _id = id;
        _price = price;
    }

    String getModel() {
      return _model;
    }

    int getId() {
      return _id;
    }

    double getPrice() {
      return _price;
    }
}