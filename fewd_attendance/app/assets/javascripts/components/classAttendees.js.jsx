var classAttendees = React.createClass({
	getInitialState() {
    return {
      employees: this.props.classAttendees,
      employee: {
        name: '',
        email: '',
        manager: false
      },
      errors: {}
    }
  },

  handleAddClassAttendee() {
    var that = this;
    $.ajax({
      method: 'POST',
      data: {
        employee: that.state.employee,
      },
      url: '/employees.json',
      success: function(res) {
        var newEmployeeList = that.state.employees;
        newEmployeeList.push(res);
        that.setState({
          employees: newEmployeeList,
          employee: {
            name: '',
            email: '',
            manager: false
          },
          errors: {}
        });
      },
      error: function(res) {
        that.setState({errors: res.responseJSON.errors})
      }
    });
  },

  render() {
    var that = this;
    employees = this.state.employees.map( function(employee) {
      return (
        < classAttendees classAttendees={employee} key={employee.id} onFireEmployee={that.handleFireEmployee} />
      );
    });
    return (
        <div id="employees">
          <p> //this is where the employees should go?// </p>
        </div>
     
    );
  }
}); //end react class