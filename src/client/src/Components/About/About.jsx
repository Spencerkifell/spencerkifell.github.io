import React from 'react'

export default function About() {
  return (
    <div id='about' className='md:text-2xl text-white p-10'>
        <div className='flex flex-col'>
            <div>
            <h1 className="mt-8 ml-8 mb-2 text-4xl text-slate-200 md:text-6xl text-left">
                <span className='text-purple-400'>01.</span> About
            </h1>
            </div>
            <div className='m-10'>
            <p className='ml-8 mt-4 text-slate-200'>
                I am a Software Developer based in Montreal, Canada. I'm currently working as a full-time SRE at Morgan Stanley and am pursuing my undergraduate in Computer Science at Concordia University. I'm passionate about learning new technologies and creating new projects. I'm always looking for new opportunities to learn and grow as a developer.
            </p>
            <p className='ml-8 mt-4 text-slate-200'>
                I have recently graduated from John Abbott College with an Associates degree in Computer Science. I have experience working with a variety of technologies including React, Node.js, Express, MongoDB, and more. I have also worked with a variety of languages including JavaScript, Python, C#, and Java.
            </p>
            <p className='ml-8 mt-4 text-slate-200'>
                Outside my professional life, I spend a lot of time playing video games, listening to music and learning new things that will help me grow as a developer.
            </p>
            <p className='ml-8 mt-4 text-slate-200'>
                If you would like to get in touch with me or want to collaborate on a project, feel free to contact me below.
            </p>
            </div>
        </div>
    </div>
  )
}
