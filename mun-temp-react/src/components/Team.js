import React from 'react';
import { Box, Heading, Text, SimpleGrid, Container, VStack, Image } from '@chakra-ui/react';

const TeamMember = ({ name, role, imageUrl }) => (
  <VStack spacing={3} align="center">
    <Image
      borderRadius="full"
      boxSize="150px"
      src={imageUrl}
      alt={name}
      fallbackSrc="https://via.placeholder.com/150"
    />
    <Heading as="h3" size="md">
      {name}
    </Heading>
    <Text>{role}</Text>
  </VStack>
);

const Team = () => {
  const teamMembers = [
    { name: 'John Doe', role: 'President', imageUrl: '' },
    { name: 'Jane Smith', role: 'Vice President', imageUrl: '' },
    { name: 'Mike Johnson', role: 'Secretary', imageUrl: '' },
    // Add more team members as needed
  ];

  return (
    <Box as="section" py={10}>
      <Container maxW="container.xl">
        <VStack spacing={8} align="stretch">
          <Heading as="h2" size="xl" textAlign="center">
            Our Team
          </Heading>
          <SimpleGrid columns={[1, 2, 3, 4]} spacing={10}>
            {teamMembers.map((member, index) => (
              <TeamMember key={index} {...member} />
            ))}
          </SimpleGrid>
        </VStack>
      </Container>
    </Box>
  );
};

export default Team;
