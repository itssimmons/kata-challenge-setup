export class Vector {
  components: Readonly<Array<number>>;
  constructor(components: Array<number> = []) {
    this.components = components;
  }

  public toString(): string {
    return `(${this.components.join(",")})`;
  }

  public add(other: Vector): Vector {
    if (other.components.length != this.components.length) {
      throw new RangeError();
    }

    const aux: Array<number> = Array.from(
      { length: this.components.length },
      () => 0,
    );

    for (let i = 0; i < this.components.length; ++i) {
      aux[i] = this.components[i] + other.components[i];
    }

    return new Vector(aux);
  }

  public subtract(other: Vector): Vector {
    if (other.components.length != this.components.length) {
      throw new RangeError();
    }

    const aux: Array<number> = Array.from(
      { length: this.components.length },
      () => 0,
    );

    for (let i = 0; i < this.components.length; ++i) {
      aux[i] = this.components[i] - other.components[i];
    }

    return new Vector(aux);
  }

  public dot(other: Vector): number {
    if (other.components.length != this.components.length) {
      throw new RangeError();
    }

    const aux: Array<number> = Array.from(
      { length: this.components.length },
      () => 0,
    );

    for (let i = 0; i < this.components.length; ++i) {
      aux[i] = this.components[i] * other.components[i];
    }

    return aux.reduce((prev, next) => prev + next, 0);
  }

  public norm(): number {
    const aux: Array<number> = Array.from(
      { length: this.components.length },
      () => 0,
    );

    for (let i = 0; i < this.components.length; ++i) {
      aux[i] = this.components[i] ** 2;
    }

    const sum = aux.reduce((prev, next) => prev + next, 0);
    return Math.sqrt(sum);
  }

  public equals(other: Vector): boolean {
    if (other.components.length != this.components.length) {
      return false;
    }

    for (let i = 0; i < this.components.length; ++i) {
      if (this.components[i] !== other.components[i]) {
        return false;
      }
    }

    return true;
  }
}
