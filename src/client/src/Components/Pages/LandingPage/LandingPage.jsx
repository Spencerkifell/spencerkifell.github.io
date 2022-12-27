import React from 'react'
import About from '../../About/About';

export const LandingPage = () => {
  var date = new Date();
  var age = date.getFullYear() - 2002;
  return (
      <div className='flex w-screen flex-col'>
        <div className='h-screen justify-center text-xl mx-auto'>
          <div className='md:text-2xl text-white bg-zinc-900 p-10 shadow-2xl shadow-slate-800'>
            <p>
              <span className='text-sky-400'>const</span> 
              <span className='text-sky-500'> spencer</span> =
              <span className='text-purple-400'> {"{"}</span>
            </p>
            <p className='ml-4'>
              <span className='text-sky-300'>age: </span> 
              <span className='text-green-300'>{age}</span>,
            </p>
            <p className='ml-4'>
              <span className='text-sky-300'>location: </span> 
              <span className='text-orange-300'>"Montreal, Canada"</span>,
            </p>
            <p className='ml-4'>
              <span className='text-sky-300'>occupation: </span> 
              <span className='text-orange-300'>"Software Developer"</span>,
            </p>
            <p className='ml-4'>
              <span className='text-sky-300'>interests: </span> 
              <span className='text-sky-600'>[</span>
            </p>
            <p className='ml-8'>
              <span className='text-orange-300'>"Coding"</span>,
            </p> 
            <p className='ml-8'>
              <span className='text-orange-300'>"Learning"</span>,
            </p> 
            <p className='ml-8'>
              <span className='text-orange-300'>"Music"</span>,
            </p>
            <p className='ml-8'>
              <span className='text-orange-300'>"Gaming"</span>
            </p>
            <p className='ml-4 text-sky-600'>]</p>
            <p className='text-purple-400'>{"}"}</p>
          </div>
          <h1 className="mt-20 md:mt-28 mb-2 text-4xl text-slate-200 md:text-6xl text-center animate-bounce">
            Hi, I'm Spencer
          </h1>
        </div>
        <div className='h-screen w-screen justify-center text-xl mx-auto my-auto bg-zinc-900'>
          <About />
        </div>
      </div>
  )
}