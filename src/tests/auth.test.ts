import { describe, expect, it } from "vitest";
const person = {
  isActive: true,
  age: 32,
};

describe("person", () => {
  it("should is defined", () => {
    expect(person.isActive).toBeDefined();
  });
  it("is active", () => {
    expect(person.isActive).toBeTruthy();
  });
});
