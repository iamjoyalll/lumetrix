import { useState } from "react";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import { motion } from "framer-motion";
import { Rocket, Users, Code2, Bot } from "lucide-react";

function HomePage() {
  const [menuOpen, setMenuOpen] = useState(false);

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 to-gray-800 text-white">
      <header className="flex justify-between items-center p-4 md:px-10 shadow-lg">
        <h1 className="text-2xl font-bold text-cyan-400">Lumetrix AI</h1>
        <nav className="hidden md:flex gap-6 text-lg">
          <a href="#home" className="hover:text-cyan-300">Home</a>
          <a href="#about" className="hover:text-cyan-300">About</a>
          <a href="#features" className="hover:text-cyan-300">Features</a>
          <a href="#contact" className="hover:text-cyan-300">Contact</a>
        </nav>
        <div className="md:hidden">
          <button onClick={() => setMenuOpen(!menuOpen)}>☰</button>
        </div>
      </header>

      {menuOpen && (
        <nav className="flex flex-col items-center md:hidden bg-gray-800 py-4">
          <a href="#home" className="py-2">Home</a>
          <a href="#about" className="py-2">About</a>
          <a href="#features" className="py-2">Features</a>
          <a href="#contact" className="py-2">Contact</a>
        </nav>
      )}

      <section id="home" className="text-center pt-20 px-4">
        <motion.h2
          className="text-4xl md:text-6xl font-bold mb-4"
          initial={{ opacity: 0, y: -50 }}
          animate={{ opacity: 1, y: 0 }}
        >
          Welcome to Lumetrix AI
        </motion.h2>
        <p className="text-lg text-gray-300 max-w-2xl mx-auto">
          Pioneering the future with Artificial Intelligence, Robotics & Innovative Programming Solutions.
        </p>
        <div className="mt-6 flex justify-center gap-4">
          <a href="/login" target="_blank" rel="noopener">
            <Button>Login</Button>
          </a>
          <a href="/signup" target="_blank" rel="noopener">
            <Button variant="outline">Sign Up</Button>
          </a>
        </div>
      </section>

      <section id="about" className="p-8 md:p-16 bg-gray-900 text-center">
        <h3 className="text-3xl font-semibold mb-4 text-cyan-300">About Us</h3>
        <p className="max-w-2xl mx-auto">
          The founder and CEO of the Lumetrix AI company based in USA is a visionary leader focused on transforming industries through advanced technologies.
        </p>
      </section>

      <section id="features" className="p-8 md:p-16">
        <h3 className="text-3xl font-semibold text-center text-cyan-300 mb-8">Our Core Areas</h3>
        <div className="grid gap-8 md:grid-cols-3">
          <Card className="bg-slate-800 hover:bg-slate-700 transition">
            <CardContent className="p-6 text-center">
              <Bot className="mx-auto mb-4 h-12 w-12 text-cyan-400" />
              <h4 className="text-xl font-semibold mb-2">Artificial Intelligence</h4>
              <p>Smart systems that learn, adapt and innovate for the future.</p>
            </CardContent>
          </Card>
          <Card className="bg-slate-800 hover:bg-slate-700 transition">
            <CardContent className="p-6 text-center">
              <Rocket className="mx-auto mb-4 h-12 w-12 text-cyan-400" />
              <h4 className="text-xl font-semibold mb-2">Robotics</h4>
              <p>Advanced machines solving real-world problems with precision.</p>
            </CardContent>
          </Card>
          <Card className="bg-slate-800 hover:bg-slate-700 transition">
            <CardContent className="p-6 text-center">
              <Code2 className="mx-auto mb-4 h-12 w-12 text-cyan-400" />
              <h4 className="text-xl font-semibold mb-2">Programming</h4>
              <p>Efficient, scalable code powering intelligent systems.</p>
            </CardContent>
          </Card>
        </div>
      </section>

      <footer id="contact" className="bg-gray-900 text-center p-6 text-gray-400">
        <p>&copy; 2025 Lumetrix AI. All rights reserved.</p>
      </footer>
    </div>
  );
}

function LoginPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-900 text-white">
      <Card className="w-full max-w-md p-6 bg-slate-800">
        <h2 className="text-2xl font-bold mb-4 text-center">Login</h2>
        <input className="w-full p-2 mb-4 rounded bg-slate-700" type="email" placeholder="Email" />
        <input className="w-full p-2 mb-4 rounded bg-slate-700" type="password" placeholder="Password" />
        <Button className="w-full">Login</Button>
      </Card>
    </div>
  );
}

function SignupPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-900 text-white">
      <Card className="w-full max-w-md p-6 bg-slate-800">
        <h2 className="text-2xl font-bold mb-4 text-center">Sign Up</h2>
        <input className="w-full p-2 mb-4 rounded bg-slate-700" type="text" placeholder="Full Name" />
        <input className="w-full p-2 mb-4 rounded bg-slate-700" type="email" placeholder="Email" />
        <input className="w-full p-2 mb-4 rounded bg-slate-700" type="password" placeholder="Password" />
        <Button className="w-full">Create Account</Button>
      </Card>
    </div>
  );
}

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/signup" element={<SignupPage />} />
      </Routes>
    </BrowserRouter>
  );
}
