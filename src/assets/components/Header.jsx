import { Nav } from "./Nav";
import Hero from "../images/da7c8ec7bbdce86d584cca0c02b84dbe.jpg";

export const Header = (props) => {
  return (
    <header>
      <Nav />
      <div id="image_container">
        <img src={Hero} alt="Hero" />
      </div>
      <h1>{props.title}</h1>
    </header>
  );
};
