const Problem1 = artifacts.require('Problem1')

contract('Problem1', () => {
  const projectEulerSolution = 233168
  it(`should return ${projectEulerSolution}`, async () => {
    const problem1 = await Problem1.deployed()
    const result = await problem1.sumOfCommonMultiples({ gas: 300000000 })
    assert.strictEqual(result.words[0], projectEulerSolution)
  })
})
