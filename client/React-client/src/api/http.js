import axios from "axios";
import { getToken } from "../util/auth";
const API_ENDPOINT = import.meta.env.VITE_API_ENDPOINT;

export async function fetchsearch(query, limit, page) {
  const token = getToken();
  if (!query) return null;
  try {
    const response = await axios.get(
      `${API_ENDPOINT}search?q=${query}&limit=${limit}&page=${page}`,
      {
        headers: token ? { Authorization: `Bearer ${token}` } : {},
      },
    );
    return response;
  } catch (error) {
    return null;
  }
}
