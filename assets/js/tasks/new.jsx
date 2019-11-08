import React from 'react';
import ReactDOM from 'react-dom';

import { Form, Button } from 'react-bootstrap';

export default function TasksNew(props) {
  var jobs = Array.from(props.jobs.values());
  var job_codes = jobs.map(function(n){
	  return (<option>{n.job_code}</option>);
  })
  console.log(job_codes);
  return (
    <div>
      <h4>Task{props.index}</h4>
	<Form.Group controlId="job_code">
        <Form.Label>Job</Form.Label>
        <Form.Control as="select">
	  {job_codes}
	</Form.Control>
	 </Form.Group>
	 <Form.Group controlId="hours">
        <Form.Label>Hours</Form.Label>
        <Form.Control as="select">
	  <option>1</option>
     	  <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
	  <option>6</option>
          <option>7</option>
          <option>8</option>
        </Form.Control>
	</Form.Group>
      <Form.Group controlId="notes">
        <Form.Label>Notes</Form.Label>
        <Form.Control as="textarea"/>
      </Form.Group>

    </div>
  );
}
