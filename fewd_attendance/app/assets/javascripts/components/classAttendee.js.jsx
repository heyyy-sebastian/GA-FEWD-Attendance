var classAttendee = React.createClass({
  getInitialState() {
    return {
      employee: this.props.classAttendee
    }
  },

  render() {
    return (
        <p>{this.state.employee.name}</p>
    );
  }
});