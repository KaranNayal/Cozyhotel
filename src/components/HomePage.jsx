import React, { useState } from 'react';
import { Container, Row, Col, Form, Button, Card, Carousel, Navbar, Nav } from 'react-bootstrap';
import { FaUser, FaSignInAlt, FaSwimmingPool, FaWifi, FaBicycle, FaUtensils, FaBed, FaParking, FaSmokingBan, FaDog, FaSearch ,FaDumbbell , FaSpa, FaFilm, FaBusinessTime } from 'react-icons/fa';
import { NavLink } from 'react-router-dom';
import { faFacebook, faInstagram, faTwitter } from '@fortawesome/free-brands-svg-icons';
import { faEnvelope, faPhone } from '@fortawesome/free-solid-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {  animated } from 'react-spring';
import HotelService from '../services/HotelService';
import chsLogo from "./chs.jpeg";
import firstSlideImage from './hotelslide1.jpg';
import secondSlideImage from './hotelSlide2.jpg';
import hotelBook from './hotelBook.jpg'
import hotel1 from './hotel1.jpg';
import hotel2 from './hotel2.jpg';
import hotel3 from './hotel3.jpg';
import hotel4 from './gym.jpeg';
import hotel5 from './spa.jpeg';
import hotel6 from './entertainment.jpeg';


function HomePage() {
  const [checkinDate, setCheckinDate] = useState('');
  const [checkoutDate, setCheckoutDate] = useState('');
  const [roomType, setRoomType] = useState('standard');
  const [hoveredCard, setHoveredCard] = useState(null);
  const [city, setCity] = useState('');
  const [searchedHotels, setSearchedHotels] = useState([]);

  const handleSearch = () => {
    console.log('Searching for hotels...');
    console.log('Checkin Date:', checkinDate);
    console.log('Checkout Date:', checkoutDate);
    console.log('Location:', city);
    console.log('Room Type:', roomType);

    // Calling  the HotelService method to search hotels based on location
    HotelService.getHotelsByLocation(city)
      .then(response => {
        console.log('Searched hotels:', response.data);
        setSearchedHotels(response.data); 
      })
      .catch(error => {
        console.error('Error searching hotels:', error);
      });
  };
  const handleBookNow = () => {
    window.alert('Please login to book this hotel.');
  };
  

  return (
    <div className="home-page">
     <Navbar bg="dark" variant="dark" expand="lg">
      <Container>
        <Navbar.Brand href="/">
          <img src={chsLogo} alt="Company Logo" className="logo-size" />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="mx-auto">
            <Navbar.Brand href="#home"></Navbar.Brand>
          </Nav>
          <Nav className="mr-auto">
            <NavLink to="/aboutus" className="nav-link">
              About Us
            </NavLink>
            <NavLink to="/adduser" className="nav-link">
              <FaUser /> Register
            </NavLink>
            <NavLink to="/login" className="nav-link">
              <FaSignInAlt /> Login
            </NavLink>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>

      <Container className="mt-4">
      <Row>
      <Col md={12}>
        <h1 className="text-center text-primary mb-4">
          Welcome to{' '}
          <span style={{
            fontFamily: 'Pacifico, cursive',
            fontStyle: 'normal',
            fontWeight: 'normal',
            fontSize: '3rem'
          }}>
            CozyHeavenStay
          </span>
        </h1>
        <h2 className="text-center mb-4" style={{ 
          fontFamily: 'Roboto, sans-serif', 
          fontSize: '1.5rem', 
          fontWeight: '400' 
        }}>
          Find Your Perfect Hotel
        </h2>
      </Col>
    </Row>
        <Row>
          <Col md={12}>
            <Form>
              <Row>
                <Col md={3}>
                  <Form.Group controlId="checkinDate">
                    <Form.Label>Check-in Date</Form.Label>
                    <Form.Control type="date" value={checkinDate} onChange={(e) => setCheckinDate(e.target.value)} />
                  </Form.Group>
                </Col>
                <Col md={3}>
                  <Form.Group controlId="checkoutDate">
                    <Form.Label>Check-out Date</Form.Label>
                    <Form.Control type="date" value={checkoutDate} onChange={(e) => setCheckoutDate(e.target.value)} />
                  </Form.Group>
                </Col>
                <Col md={3}>
                  <Form.Group controlId="location">
                    <Form.Label>Location</Form.Label>
                    <Form.Control type="text" value={city} onChange={(e) => setCity(e.target.value)} />
                  </Form.Group>
                </Col>
                <Col md={3}>
                  <Form.Group controlId="roomType">
                    <Form.Label>Room Type</Form.Label>
                    <Form.Control as="select" value={roomType} onChange={(e) => setRoomType(e.target.value)}>
                      <option>Standard</option>
                      <option>Deluxe</option>
                      <option>Suite</option>
                    </Form.Control>
                  </Form.Group>
                </Col>
              </Row>
              <Row>
                <Col md={12} className="text-center">
                  <Button variant="primary" onClick={handleSearch}>
                    <FaSearch /> Search
                  </Button>
                </Col>
              </Row>
            </Form>
          </Col>
        </Row>
        <Container className="mt-4">
        <Row xs={1} md={2} lg={3} className="g-4">
  {searchedHotels.map(hotel => (
    <Col key={hotel.hotelId}>
      <Card>
        <Card.Img variant="top" src={hotelBook} style={{ width: '100%', height: 'auto' }} />
        <Card.Body>
          <Card.Title>{hotel.name}</Card.Title>
          <Card.Text>
            <strong>Hotel Id:</strong> {hotel.hotelId}<br />
            <strong>Name:</strong> {hotel.hotelName}<br />
            <strong>Location:</strong> {hotel.location}<br />
            <strong>Rating:</strong> {hotel.rating}<br />
            <strong>Amenities:</strong> {hotel.amenities}<br />
          </Card.Text>
          <Button variant="primary" onClick={() => handleBookNow(hotel.hotelId)}>Book Now</Button>
        </Card.Body>
      </Card>
    </Col>
  ))}
</Row>

      </Container>
        <Row className="mt-4">
          <Col md={12}>
            <Carousel>
              <Carousel.Item>
                <img
                  src={firstSlideImage}      
                  className="d-block w-100"
                  alt="First slide"
                  style={{ height: '400px'}}
                />
                <Carousel.Caption>
                  <h3> Cozy Heaven Stay</h3>
                  <p>Where every stay tells a story of comfort and care.</p>
                </Carousel.Caption>
              </Carousel.Item>
              <Carousel.Item>
                <img
                  src={secondSlideImage} 
                  className="d-block w-100"
                  alt="Second slide"
                  style={{ height: '400px' }}
                />
                <Carousel.Caption>
                <h3>Cozy Heaven Stay</h3>
                  <p>Where every stay tells a story of comfort and care.</p>
                </Carousel.Caption>
              </Carousel.Item>
            </Carousel>
          </Col>
        </Row>

        <Row className="mt-4">
          <Col md={12}>
            <h2 className="text-center">Amenities</h2>
          </Col>
          <Col md={12} className="amenities">
            <Row>
              <Col md={3}>
                <div className="amenity">
                  <FaSwimmingPool className="amenity-icon" />
                  <p>Swimming Pool</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaWifi className="amenity-icon" />
                  <p>Free Wi-Fi</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaBicycle className="amenity-icon" />
                  <p>Bicycle Rental</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaUtensils className="amenity-icon" />
                  <p>Restaurant</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaDog className="amenity-icon" />
                  <p>Pet Friendly</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaBed className="amenity-icon" />
                  <p>Comfortable Beds</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaParking className="amenity-icon" />
                  <p>Parking</p>
                </div>
              </Col>
              <Col md={3}>
                <div className="amenity">
                  <FaSmokingBan className="amenity-icon" />
                  <p>Non-Smoking</p>
                </div>
              </Col>
              <Col md={3}>
        <div className="amenity">
          <FaDumbbell className="amenity-icon" />
          <p>Gym</p>
        </div>
      </Col>
      <Col md={3}>
        <div className="amenity">
          <FaBusinessTime className="amenity-icon" />
          <p>Business Lounge</p>
        </div>
      </Col>
      <Col md={3}>
        <div className="amenity">
          <FaSpa className="amenity-icon" />
          <p>Spa</p>
        </div>
      </Col>
      <Col md={3}>
        <div className="amenity">
          <FaFilm className="amenity-icon" />
          <p>Entertainment</p>
        </div>
      </Col>
            </Row>
          </Col>
        </Row>

        {/* Cards Section */}
        <Row className="mt-4">
          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel1' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel1')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel1} />
                <Card.Body>
                  <Card.Title>Tailored Comfort Just for You</Card.Title>
                  <Card.Text>
                  Relax in rooms designed to meet your personal preferences, where every detail is customized to create a unique and comfortable stay. From personalized décor to special amenities, our customized rooms offer a bespoke experience that reflects your individual style and needs. 
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>
          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel2' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel2')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel2} />
                <Card.Body>
                  <Card.Title>Experience Culinary Excellence</Card.Title>
                  <Card.Text>
                  Indulge in a variety of dining options, from gourmet meals to casual bites, all crafted to satisfy your palate. Whether you&apos;re looking for a quick snack or a full-course dinner, our dining amenities offer the perfect setting for every occasion. Enjoy a taste of luxury with our expertly prepared dishes. 
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>
          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel3' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel3')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel3} />
                <Card.Body>
                  <Card.Title>Rest Easy in Ultimate Comfort</Card.Title>
                  <Card.Text>
                  Sink into plush, ergonomically designed beds that promise a restful night&apos;s sleep. Our comfortable beds are crafted with high-quality materials to provide the perfect balance of support and softness. Whether you&apos;re unwinding after a long day, our beds ensure you wake up refreshed and rejuvenated.
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>
          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel4' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel4')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel4} />
                <Card.Body>
                  <Card.Title>Achieve Your Wellness Goals</Card.Title>
                  <Card.Text>
                  Stay active and healthy in our state-of-the-art fitness center, equipped with the latest exercise machines and free weights. Whether you&apos;re looking to maintain your routine or try something new, our facility offers a variety of options to suit your fitness needs. Enjoy a motivating environment that supports your health and wellness journey.
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>

          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel5' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel5')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel5}/>
                <Card.Body>
                  <Card.Title>Rejuvenate and Relax</Card.Title>
                  <Card.Text>
                  Unwind and indulge in our luxurious spa services, designed to help you de-stress and rejuvenate. Our skilled therapists offer a range of treatments, from soothing massages to invigorating facials, all tailored to enhance your well-being. Experience ultimate relaxation in a serene and tranquil setting, where your comfort and satisfaction are our top priorities.
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>

          <Col md={4}>
            <animated.div className="card-container" style={hoveredCard === 'hotel6' ? { transform: 'scale(1.05)' } : null}>
              <Card className="hotel-card" onMouseEnter={() => setHoveredCard('hotel6')} onMouseLeave={() => setHoveredCard(null)}>
                <Card.Img variant="top" src={hotel6} />
                <Card.Body>
                  <Card.Title>Endless Fun and Leisure</Card.Title>
                  <Card.Text>
                  Discover a range of entertainment options designed to keep you engaged and entertained. From movie screenings and live performances to interactive games and activities, our offerings provide something for everyone. Whether you&apos;re seeking relaxation or excitement, you&apos;ll find a variety of ways to enjoy your time and make lasting memories.
                  </Card.Text>
                  <Button variant="outline-primary"></Button>
                </Card.Body>
              </Card>
            </animated.div>
          </Col>
        </Row>


        </Container>
        <footer className="login-footer mt-4" style={{ backgroundColor: '#343a40', color: '#ffffff', padding: '20px 0' }}>
          <Container>
            <Row>
              <Col md={4} className="text-center">
                <div style={{ marginBottom: '20px' }}>
                  <h5>About Us</h5>
                  <p>We are a company committed to providing the best accommodation services to our customers.</p>
                </div>
              </Col>
              <Col md={4} className="text-center">
                <div style={{ marginBottom: '20px' }}>
                  <h5>Contact Us</h5>
                  <p><FontAwesomeIcon icon={faPhone} /> +1 234 567 890</p>
                  <p><FontAwesomeIcon icon={faEnvelope} /> info@example.com</p>
                </div>
              </Col>
              <Col md={4} className="text-center">
                <div style={{ marginBottom: '20px' }}>
                  <h5>Follow Us</h5>
                  <p>
                    <a href="https://www.facebook.com/example" target="_blank" rel="noopener noreferrer"><FontAwesomeIcon icon={faFacebook} /></a>&nbsp;&nbsp;&nbsp;
                    <a href="https://www.twitter.com/example" target="_blank" rel="noopener noreferrer"><FontAwesomeIcon icon={faTwitter} /></a>&nbsp;&nbsp;&nbsp;
                    <a href="https://www.instagram.com/example" target="_blank" rel="noopener noreferrer"><FontAwesomeIcon icon={faInstagram} /></a>
                  </p>
                </div>
              </Col>
            </Row>
          </Container>
          <div className="text-center mt-3" style={{ borderTop: '1px solid #fff', paddingTop: '10px' }}>
            <p>© 2024 Cozy Heaven Stay. All rights reserved.</p>
          </div>
        </footer>
     
    </div>
  );
}

export default HomePage;
