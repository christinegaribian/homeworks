import React from 'react';

class Calculator extends React.Component{
  constructor(){
    super();
    this.state = { result: 0, input1: "", input2: ""};
    this.setInput1 = this.setInput1.bind(this);
    this.setInput2 = this.setInput2.bind(this);

    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setInput1(e){
    e.preventDefault();
    const input1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({input1});
  }

  setInput2(e){
    e.preventDefault();
    const input2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({input2});
  }

  add(e){
    e.preventDefault();
    const result = this.state.input1 + this.state.input2;
    this.setState({result});
  }

  subtract(e){
    e.preventDefault();
    const result = this.state.input1 - this.state.input2;
    this.setState({result});
  }

  multiply(e){
    e.preventDefault();
    const result = this.state.input1 * this.state.input2;
    this.setState({result});
  }

  divide(e){
    e.preventDefault();
    const result = this.state.input1 / this.state.input2;
    this.setState({result});
  }

  clear(e){
    e.preventDefault();
    this.setState({result: 0, input1: "", input2: ""});
  }

  render(){
    const {result, input1, input2} = this.state;

    return (
      <div>
        // <h1>Hello World</h1>
        <h1>{result}</h1>

        <input onChange={this.setInput1} value={input1}></input>
        <input onChange={this.setInput2} value={input2}></input>

        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>

        <button onClick={this.clear}>Clear</button>
      </div>
    );
  }
}

export default Calculator;
