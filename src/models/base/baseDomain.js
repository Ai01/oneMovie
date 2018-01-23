class BaseDomain {
  static model;

  static async findOne(options) {
    const instance = await this.model.findOne(options);
    return instance;
  }

  static async create(attr) {
    this.model.create(attr);
  }
}

export default BaseDomain;
