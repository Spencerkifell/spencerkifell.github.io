import React from 'react'
import { Link } from 'react-router-dom'
import { githubSquare } from 'react-icons-kit/fa/githubSquare'
import { linkedinSquare } from 'react-icons-kit/fa/linkedinSquare'

export const NavBar = () => {
  return (
    <nav>
        <div className='p-7 mx-4 mb-4 md:mb-10 flex justify-end items-center flex-wrap bg-zinc-900 text-white'>
            <ul className='text-xl flex flex-row space-x-4 text-slate-200'>
                <li className='hover:bg-slate-800 hover:rounded md:text-2xl p-1 px-2'>
                  <a href="#about">
                    <span className='text-purple-400'>
                      01.
                    </span> 
                    {" About"}
                  </a>
                </li>
            </ul>
        </div>
    </nav>
  )
}