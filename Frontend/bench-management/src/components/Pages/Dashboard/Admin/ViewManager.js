import React, { useContext, useEffect, useState } from "react";
import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import Table from "react-bootstrap/Table";
import Form from "react-bootstrap/Form";
import axios from "axios";
import AuthContext from "../../../Global/AuthContext.js";
import { memo } from "react";
function ViewManager() {
  const authData = useContext(AuthContext);
  const [show, setShow] = useState(false);
  const [managerDetails, setManagerDetails] = useState();
  const [addlocation, setAddLocation] = useState({
    managerId: null,
    locationId: null,
  });
  const handleClose = () => {
    setShow(false);
    authData.setPost({});
  };
  const handleShow = () => {
    setShow(true);
    fetchManagerData();
  };

  // console.log(deleteResponse)
  const handleAddLocation = (e) => {
    setAddLocation({ ...addlocation, [e.target.name]: e.target.value });
    if (e.target.value === "")
      setAddLocation({ ...addlocation, [e.target.name]: null });
  };

  const postLocationToManager = async () => {
    try {
      await axios
        .put(
          `http://localhost:2538/api/manager/${addlocation.managerId}/location/${addlocation.locationId}`,
          {
            headers: { Authorization: authData.accessToken },
          }
        )
        .then((response) => {
          // console.log("response " + JSON.stringify(response.data));
          // setPostResponse(response);
          setAddLocation({
            managerId: null,
            locationId: null,
          });
          handleClose();
        });
    } catch {
      console.log();
    }
  };

  const deleteLocationToManager = async () => {
    try {
      await axios.delete(
        `http://localhost:2538/api/manager/delete/${addlocation.managerId}/locationdelete/${addlocation.locationId}`,
        {
          headers: { Authorization: authData.accessToken },
        }
      );
      // console.log("response " + response.data);
      handleClose();
    } catch {
      console.log();
    }
  };

  const fetchManagerData = async () => {
    try {
      await axios
        .get("http://localhost:2538/api/manager/get", {
          headers: { Authorization: authData.accessToken },
        })
        .then((res) => {
          console.log("manager data " + JSON.stringify(res.data));
          setManagerDetails(res.data);
        });
    } catch {
      console.log();
    }
  };

  return (
    <>
      <button className="button2" onClick={handleShow}>
        <i className="fa-solid fa-user"></i> &nbsp; BENCH MANAGERS
      </button>

      <Modal
        show={show}
        onHide={handleClose}
        backdrop="static"
        keyboard={false}
      >
        <Modal.Header closeButton>
          <Modal.Title>Bench Manager Location Access</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form id="view">
            <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
              <Form.Label>Manager Id</Form.Label>
              <Form.Control
                name="managerId"
                onChange={handleAddLocation.bind(this)}
                placeholder="Enter manager Id"
              />
            </Form.Group>
            <Form.Group>
              <Form.Label>Select Location</Form.Label>
              <Form.Select
                aria-label="Default select example"
                name="locationId"
                onChange={handleAddLocation.bind(this)}
              >
                <option disabled selected hidden>
                  Select from below
                </option>
                <option value={1}>Gurugram</option>
                <option value={2}>Bangalore</option>
                <option value={3}>Hyderabad</option>
              </Form.Select>
            </Form.Group>
            <div className="btn-mngr">
              <button
                className="button6"
                type="button"
                onClick={postLocationToManager}
                disabled={
                  addlocation.locationId === null ||
                  addlocation.managerId === null
                }
                style={
                  addlocation.locationId === null ||
                  addlocation.managerId === null
                    ? { backgroundColor: "grey" }
                    : {}
                }
              >
                Grant Access
              </button>
              <button
                className="button6"
                type="button"
                onClick={deleteLocationToManager}
                disabled={
                  addlocation.locationId === null ||
                  addlocation.managerId === null
                }
                style={
                  addlocation.locationId === null ||
                  addlocation.managerId === null
                    ? { backgroundColor: "grey" }
                    : {}
                }
              >
                Revoke Access
              </button>
            </div>
          </Form>
          <Table striped bordered hover>
            <thead className="thread2">
              <tr>
                <th>#</th>
                <th>Name</th>
                <th>Locations</th>
              </tr>
            </thead>
            <tbody>
              {managerDetails &&
                managerDetails.map((user, index) => (
                  <tr>
                    <td>{user.id}</td>
                    <td>{user.mname}</td>
                    <td>
                      {user.assignedLocation &&
                        user.assignedLocation.map((loc, index) => (
                          <p>{loc.locName}</p>
                        ))}
                    </td>
                  </tr>
                ))}
            </tbody>
          </Table>
        </Modal.Body>
        <Modal.Footer>
          <button className="button3" onClick={handleClose}>
            Close
          </button>
        </Modal.Footer>
      </Modal>
    </>
  );
}

export default memo(ViewManager);
