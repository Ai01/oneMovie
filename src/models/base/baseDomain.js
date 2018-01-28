class BaseDomain {
  static model;

  static async findOne(options) {
    return await this.model.findOne(options);
  }

  static async findAll(options) {
    return await this.model.findAll(options);
  }

  static async create(value, options) {
    return await this.model.create(value, options);
  }

  static async destroy(options) {
    await this.model.destroy(options);
  }

  static async update(value, options) {
    return await this.model.update(value, options);
  }
}

export default BaseDomain;
