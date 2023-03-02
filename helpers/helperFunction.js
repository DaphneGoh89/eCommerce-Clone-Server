function expand(rowCount, columnCount, startAt = 1) {
  let index = startAt;
  return Array(rowCount)
    .fill(0)
    .map(
      (item) =>
        `(${Array(columnCount)
          .fill(0)
          .map((item) => `$${index++}`)
          .join(", ")})`
    );
}

function flatten(arr) {
  let newArr = [];
  arr.forEach((item) => item.forEach((p) => newArr.push(p)));
  return newArr;
}

module.exports = { expand, flatten };
