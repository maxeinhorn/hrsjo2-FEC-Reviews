import React from "react";
import Reviews from "./Reviews.jsx";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      temp: 1
    }
  }

  render() {
    return (
      <div>
        <h1> Yo yo yo!!</h1>
        <Reviews />
      </div>
    )
  }
}

export default App;