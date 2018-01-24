class BaseDomain {
  static model;

  static async findOne(options) {
    const instance = await this.model.findOne(options);
    return instance;
  }

  static async create(value, options) {
    await this.model.create(value, options);
  }

  static async destory(options) {
    await this.model.destory(options);
  }
}

export default BaseDomain;
