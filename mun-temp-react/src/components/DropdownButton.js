import React, { useState } from 'react';
import { Button, Menu, MenuButton, MenuList, MenuItem } from '@chakra-ui/react';
import { ChevronDownIcon } from '@chakra-ui/icons';

const DropdownButton = () => {
  const [selectedOption, setSelectedOption] = useState('Select Option');

  const handleOptionSelect = (option) => {
    setSelectedOption(option);
    // Add any additional logic here when an option is selected
  };

  return (
    <Menu>
      <MenuButton as={Button} rightIcon={<ChevronDownIcon />}>
        {selectedOption}
      </MenuButton>
      <MenuList>
        <MenuItem onClick={() => handleOptionSelect('Option 1')}>Option 1</MenuItem>
        <MenuItem onClick={() => handleOptionSelect('Option 2')}>Option 2</MenuItem>
        <MenuItem onClick={() => handleOptionSelect('Option 3')}>Option 3</MenuItem>
      </MenuList>
    </Menu>
  );
};

export default DropdownButton;
