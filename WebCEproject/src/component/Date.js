// import * as React from 'react';
// import TextField from '@mui/material/TextField';
import './Date.css'



// export default function Date() {

  
  
//   return (
//     <div >
//     <TextField 
//       id="date"
//       // label="Birthday"
//       type="date"
//       defaultValue="2022-02-24"
//       sx={{ width: 180 }}
//       InputLabelProps={{
//         shrink: true,
        
//       }}
      
      
      
//     />
    
//   </div>
// );
// }

import * as React from 'react';
import Stack from '@mui/material/Stack';
import TextField from '@mui/material/TextField';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import TimePicker from '@mui/lab/TimePicker';
import DateTimePicker from '@mui/lab/DateTimePicker';
import DesktopDatePicker from '@mui/lab/DesktopDatePicker';
import MobileDatePicker from '@mui/lab/MobileDatePicker';
import { isToday, weeksToDays } from 'date-fns';


export default function MaterialUIPickers() {

  var today = new Date();
  var min = (new Date()).setDate(today.getDate() - 7);

  const [value, setValue] = React.useState(today);

  const handleChange = (newValue) => {
    setValue(newValue);
    //alert(newValue.toString());
    alert(newValue);
  };
  
  return (
    <div id = "selectDate" >
    <LocalizationProvider dateAdapter={AdapterDateFns} >
      {/* <Stack spacing={3} > */}
        <DesktopDatePicker
          
          label="Date"
          inputFormat="dd/MM/yyyy"
          value={value}
          onChange={handleChange}
          
          maxDate= {today}
          minDate = {min}
          renderInput={(params) => <TextField {...params} id="date" />}
          
        />
        {/* <MobileDatePicker
          label="Date mobile"
          inputFormat="MM/dd/yyyy"
          value={value}
          onChange={handleChange}
          renderInput={(params) => <TextField {...params} />}
        />
        <TimePicker
          label="Time"
          value={value}
          onChange={handleChange}
          renderInput={(params) => <TextField {...params} />}
        />
        <DateTimePicker
          label="Date&Time picker"
          value={value}
          onChange={handleChange}
          renderInput={(params) => <TextField {...params} />}
        /> */}
      {/* </Stack> */}
    </LocalizationProvider>
    
    </div>
  );
}

