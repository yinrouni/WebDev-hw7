import React from 'react';
import ReactDOM from 'react-dom';

import { Form, Button } from 'react-bootstrap';
import { submit_new_sheet } from '../ajax';

export default function SheetsNew(props) {
  return (
    <div>
      <h1>New TimeSheet</h1>
      <Form.Group controlId="date">
        <Form.Label>Date</Form.Label>
        <Form.Control type="date" />
      </Form.Group>
      <Form.Group controlId="desc">
        <Form.Label>Description</Form.Label>
        <Form.Control as="textarea" rows="3" />
      </Form.Group>
      <Form.Group controlId="new_task">
        <Button variant="primary">+ New Task</Button>
      </Form.Group>

      <Form.Group controlId="submit">
        <Button variant="primary" onClick={() => submit_new_sheet(this)}>Upload Timesheet</Button>
      </Form.Group>
    </div>
  );
}
