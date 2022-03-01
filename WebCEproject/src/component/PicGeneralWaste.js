import { GeneralWasteElements } from "./Bar";
import "./Picwaste.css";

// import a from '../picture/bin.png' {var}
//import indexpic from './Select';

import PictureGeneralWaste from "../data/PictureGeneralWaste";

export const GeneralWasteElementsHighlight = PictureGeneralWaste.map((GeneralWaste, index) => {
  return <PicGeneralWaste key={index} GeneralWaste={GeneralWaste} size="highlight"/>;
});

function PicGeneralWaste(props) {
  const { GeneralWaste, size } = props;

  if (size === "small") {
    return (
      <div>
        <div className="picwaste">
          {/* <p>{GeneralWaste.name}</p> */}
          <img src={GeneralWaste.picUrl} width="80px" height="80px" />
        </div>
      </div>
    );
  } else if (size === "zoom") {
    return (
      <div>
        <div className="picwasteZoom">
          {/* <p>{GeneralWaste.name}</p> */}
          <img src={GeneralWaste.picUrl} width="100px" height="100px" />
        </div>
      </div>
    );
  } else if (size === "highlight") {
    return (
      <div>
        <div className="picwasteHighlight">
          {/* <p>{GeneralWaste.name}</p> */}
          <img src={GeneralWaste.picUrl} width="80px" height="80px" />
        </div>
      </div>
    );
  }
}

export default PicGeneralWaste;
