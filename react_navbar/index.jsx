import React from "react";
import { Link } from "react-router-dom";
import "navbar.scss";

// If you have a router to store your paths :
// import ROUTES from '../../constants/routes';

export default function Navbar() {
  return (
    <div id="navbar">
      <ul>
        <li>
          <Link className={"link"} to="/">
            Home
          </Link>
          {/* If you have a router to store your paths
            <Link className={"link"} to={ROUTES.home}>
              {t("home")}
            </Link>
            */}
        </li>
      </ul>
    </div>
  );
}
