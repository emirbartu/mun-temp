import React from 'react';
import { Box, Heading, Text, SimpleGrid, Container, VStack, Card, CardBody } from '@chakra-ui/react';

const CommitteeCard = ({ name, description }) => (
  <Card>
    <CardBody>
      <Heading as="h3" size="md" mb={2}>
        {name}
      </Heading>
      <Text>{description}</Text>
    </CardBody>
  </Card>
);

const Committees = () => {
  const committees = [
    { name: 'Security Council', description: 'Responsible for maintaining international peace and security.' },
    { name: 'Economic and Social Council', description: 'Addresses economic, social, and environmental issues.' },
    { name: 'Human Rights Council', description: 'Promotes and protects human rights around the world.' },
    // Add more committees as needed
  ];

  return (
    <Box as="section" py={10}>
      <Container maxW="container.xl">
        <VStack spacing={8} align="stretch">
          <Heading as="h2" size="xl" textAlign="center">
            Committees
          </Heading>
          <SimpleGrid columns={[1, 2, 3]} spacing={6}>
            {committees.map((committee, index) => (
              <CommitteeCard key={index} {...committee} />
            ))}
          </SimpleGrid>
        </VStack>
      </Container>
    </Box>
  );
};

export default Committees;
