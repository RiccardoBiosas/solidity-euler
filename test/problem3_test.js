const Problem3 = artifacts.require('Problem3')

contract('Problem3', () => {
  // const projectEulerSolution = 6857
  const projectEulerSolution = 29
  it(`should return ${projectEulerSolution}`, async () => {
    const problem3 = await Problem3.deployed()
    const result = await problem3.primeFactors({ gas: 300000000 })
    assert.strictEqual(result.words[0], projectEulerSolution)
  })
})
