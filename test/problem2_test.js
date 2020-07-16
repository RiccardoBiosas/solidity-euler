const Problem2 = artifacts.require('Problem2')

contract('Problem2', () => {
  const projectEulerSolution = 4613732
  it(`should return ${projectEulerSolution}`, async () => {
    const problem2 = await Problem2.deployed()
    const result = await problem2.sumOfEvenFibonacci({ gas: 300000000 })
    assert.strictEqual(result.words[0], projectEulerSolution)
  })
})
