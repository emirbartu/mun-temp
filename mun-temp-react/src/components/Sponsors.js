import React from 'react';
import { Box, Heading, SimpleGrid, Container, VStack, Image } from '@chakra-ui/react';

const SponsorLogo = ({ name, imageUrl }) => (
  <Image
    src={imageUrl}
    alt={name}
    maxH="100px"
    objectFit="contain"
    fallbackSrc="https://via.placeholder.com/150?text=Sponsor"
  />
);

const Sponsors = () => {
  const sponsors = [
    { name: 'Sponsor 1', imageUrl: '' },
    { name: 'Sponsor 2', imageUrl: '' },
    { name: 'Sponsor 3', imageUrl: '' },
    // Add more sponsors as needed
  ];

  return (
    <Box as="section" py={10} bg="gray.100">
      <Container maxW="container.xl">
        <VStack spacing={8} align="stretch">
          <Heading as="h2" size="xl" textAlign="center">
            Our Sponsors
          </Heading>
          <SimpleGrid columns={[2, 3, 4, 5]} spacing={6} justifyItems="center">
            {sponsors.map((sponsor, index) => (
              <SponsorLogo key={index} {...sponsor} />
            ))}
          </SimpleGrid>
        </VStack>
      </Container>
    </Box>
  );
};

export default Sponsors;
