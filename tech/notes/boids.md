For your boids simulation with 3D rendering, compute shaders, and spatial partitioning, here are the best language and library choices (excluding C, C++, and Rust):

### **1. Best Languages**

#### **🌟 Zig**

- **Why?**
  - Compiles to efficient native code (good for compute-heavy tasks).
  - Direct GLSL/HLSL shader integration (no extra build steps).
  - Easy interop with C libraries (useful for graphics APIs).

#### **🌟 Odin**

- **Why?**
  - Designed for high-performance graphics.
  - Clean syntax, built-in `#load "shader.glsl"` support.
  - Strong C interop (good for Vulkan/OpenGL).

#### **🌟 Jai** (Beta, but worth mentioning)

- **Why?**
  - Made by game dev Jonathan Blow, optimized for real-time graphics.
  - Built-in shader language and compute support.

#### **🌆 Julia (with GPU backends)**

- **Why?**
  - High-level but fast (via LLVM).
  - Packages like **JuliaGPU** (**KernelAbstractions.jl**) for compute shaders.
  - **Makie.jl** for 3D rendering (uses Vulkan/WebGL).

#### **🌀 Hare** (New & minimal)

- **Why?**
  - If you want something fresh, simple, and close to the metal.
  - Requires manual OpenGL/Vulkan setup (good learning experience).

---

### **2. Best Libraries**

#### **For 3D Rendering & Compute Shaders**

| Language  | Best Graphics Library                   | Compute Shader Support                      |
| --------- | --------------------------------------- | ------------------------------------------- |
| **Zig**   | **Mach** (Vulkan-based, modern)         | ✅ Yes (via SPIR-V)                         |
| **Odin**  | **vendor:gl, vendor:vulkan** (built-in) | ✅ Yes                                      |
| **Jai**   | Built-in graphics API                   | ✅ Yes                                      |
| **Julia** | **Makie.jl** (Vulkan/WebGL)             | ✅ Yes (via CUDA.jl, KernelAbstractions.jl) |

#### **For Spatial Partitioning (Octree/Grid)**

- **Zig/Odin/Jai**: Roll your own (best for learning).
- **Julia**: Use **StaticArrays.jl + Custom GPU kernels**.
- **Alternative**: **Raylib bindings** (Zig/Odin) for simple 3D grids.

---

### **3. Recommended Setup**

#### **🚀 Fastest Path (Good Balance of Control & Productivity)**

- **Language**: **Zig** (or Odin if you prefer cleaner syntax).
- **Graphics**: **Mach engine** (Zig) or **Odin’s Vulkan bindings**.
- **Compute**: **GLSL/HLSL** (via Mach/Odin’s shader pipelines).
- **Spatial**: **Manual grid/octree** (Zig/Odin’s SIMD helps).

#### **🎨 If You Prefer High-Level (Less Boilerplate)**

- **Language**: **Julia** (with **Makie.jl + KernelAbstractions.jl**).
- **Pros**: Fast prototyping, GPU compute built-in.
- **Cons**: Slightly less control over shaders.

---

### **Final Thoughts**

- **For max performance + control** → **Zig + Mach engine**.
- **For clean code + Vulkan** → **Odin**.
- **For rapid iteration + GPU compute** → **Julia**.

Would you like a minimal Zig/Odin example for the boids setup? 🚀
