import React from 'react';
import { Box, Heading, Text, VStack, Container } from '@chakra-ui/react';

const Home = () => {
  return (
    <Box as="section" py={10}>
      <Container maxW="container.xl">
        <VStack spacing={8} align="stretch">
          <Heading as="h1" size="2xl" textAlign="center">
            Welcome to MUN Temp
          </Heading>
          <Text fontSize="xl" textAlign="center">
            A Model United Nations application built with React
          </Text>
          {/* Add more content here to match the original design */}
        </VStack>
      </Container>
    </Box>
  );
};

export default Home;
