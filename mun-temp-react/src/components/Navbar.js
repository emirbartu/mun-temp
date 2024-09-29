import React from 'react';
import { Box, Flex, Link, Spacer } from '@chakra-ui/react';
import { Link as RouterLink } from 'react-router-dom';

const Navbar = () => {
  return (
    <Box bg="gray.100" py={4}>
      <Flex maxW="container.xl" mx="auto" px={4}>
        <Link as={RouterLink} to="/" fontWeight="bold" fontSize="xl">
          MUN Temp
        </Link>
        <Spacer />
        <Flex>
          <Link as={RouterLink} to="/team" mr={4}>
            Team
          </Link>
          <Link as={RouterLink} to="/committees" mr={4}>
            Committees
          </Link>
          <Link as={RouterLink} to="/sponsors">
            Sponsors
          </Link>
        </Flex>
      </Flex>
    </Box>
  );
};

export default Navbar;
