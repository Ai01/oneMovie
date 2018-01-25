class BaseDomain {
  static model;

  static async findOne(options) {
    const instance = await this.model.findOne(options);
    return instance;
  }

  static async findAll(options) {
    const allData = await this.model.findAll(options);
    return allData;
  }

  static async create(value, options) {
    await this.model.create(value, options);
  }

  static async destory(options) {
    await this.model.destory(options);
  }

  static async update(options) {
    await this.model.updatedAt(options);
  }
}

export default BaseDomain;
