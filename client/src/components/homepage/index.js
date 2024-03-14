//การนำเข้าโมดูลและคอมโพเนนต์
import React, { useState } from "react";
import {
  Container,
  Row,
  Form,
  Button,
  Alert,
  InputGroup,
  Spinner,
  CardColumns,
  Card,
} from "react-bootstrap";
import { searchArtworks } from "../../api";

function Homepage({ onLogout }) {
  // สร้าง state สำหรับเก็บค่า isLoading, noArtworksFound, keyword, และ artworks
  const [isLoading, setIsLoading] = useState(false);
  const [noArtworksFound, setNoArtworksFound] = useState(false);
  const [keyword, setKeyword] = useState("");
  const [artworks, setArtworks] = useState([]);

  // ฟังก์ชันที่เรียกเมื่อมีการเปลี่ยนแปลงใน input keyword
  const onChangeKeyword = (event) => {
    setKeyword(event.target.value);
  };

  // ฟังก์ชันที่เรียกเมื่อมีการค้นหาผลลัพธ์ของงานศิลปะ
  const onSearchArtworks = async (event) => {
    event.preventDefault();
    setIsLoading(true);
    
    // เรียกใช้ฟังก์ชัน searchArtworks จากไฟล์ api และรอผลลัพธ์
    const artworks = await searchArtworks({ keyword });
    console.log( artworks )
    
    // กำหนดค่า state ตามผลลัพธ์ที่ได้
    setArtworks(artworks);
    setNoArtworksFound(!artworks || !artworks.length);
    setIsLoading(false);
  };

  // การคืนค่าของ component Homepage
  return (
    <Container fluid>
      {/* ปุ่มออกจากระบบ */}
      <Row className="mt-2 mb-2 justify-content-end" noGutters>
        <Button variant="outline-danger" onClick={onLogout}>
          Log out
        </Button>
      </Row>
      
      {/* ข้อความต้อนรับ */}
      <Card.Img variant="top" src='https://github.com/natchaphonn/Final/blob/main/logo.png?raw=true' style={{ width: '200px', height: '200px', margin: 'auto' }} />
      <Row noGutters>
        <h1>Welcome!</h1>
      </Row>
      
      {/* คำแนะนำในการค้นหา */}
      <Row className="mt-2" noGutters>
        <h6>
          Enter keywords below to search for Pets
          Institute of Chicago.
        </h6>
      </Row>
      
      {/* ฟอร์มค้นหา */}
      <Row noGutters>
        <Form className="w-100 mb-5" onSubmit={onSearchArtworks}>
          <InputGroup>
            <Form.Control
              type="text"
              placeholder="Cat"
              onChange={onChangeKeyword}
              value={keyword}
            />
            <InputGroup.Prepend>
              <Button
                variant="outline-primary"
                disabled={!keyword}
                type="submit"
              >
                Search Pets
              </Button>
            </InputGroup.Prepend>
          </InputGroup>
        </Form>
      </Row>
      
      {/* แสดง Spinner ในขณะที่กำลังโหลด */}
      {isLoading && (
        <Row className="justify-content-center mb-5">
          <Spinner animation="border" variant="primary" />
        </Row>
      )}
      
      {/* แสดง Alert หากไม่พบผลลัพธ์ */}
      {noArtworksFound && !isLoading ? (
        <Alert variant={"info"}>
          No results were found for the entered keyword/s.
        </Alert>
      ) : (
        // แสดงรายการผลลัพธ์หลังจากค้นหา
        <CardColumns>
          {artworks.map((artwork, idx) => {
            const {
              id,
              gender,
              name,
              species,
              sub_species,
              age,
              ownner_id,
              phone,
              other_contact,
              picture
            } = artwork;
            console.log( id );
            return (
              <Card key={`artwork-${id}`}>
                <a
                  //href={image_url}
                  target="_blank"
                  rel="noreferrer"
                  aria-current="true"
                >
                  <Card.Img variant="top" src = {picture} />
                </a>
                <Card.Body>
                  <Card.Title>Name : {name}</Card.Title>
                  <Card.Title>Sub_species : {sub_species}</Card.Title>
                  <Card.Text
                    className="text-muted"
                    style={{ whiteSpace: "pre-line" }}
                  >
                    Gender : {gender}<br />
                    Age : {age} year
                    <br />
                  </Card.Text>
                  <Card.Text>
                  <small className="text-muted">Phone : {phone}</small><br />
                    <small className="text-muted">Contact : {other_contact}</small>
                  </Card.Text>
                </Card.Body>
              </Card>
            );
          })}
        </CardColumns>
      )}
    </Container>
  );
}

export default Homepage;
