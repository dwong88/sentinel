<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Sentinel;
use Reminder;
use Mail;


class ForgotPasswordController extends Controller
{
    public function forgotPassword()
    {
        return view('authentication.forgot-password');
    }

    public function postForgotPassword(Request $request)
    {
        //return $request->email;
        $user = User::whereEmail($request->email)->first();
        //$sentinelUser = Sentinel::findById($user->id);

        //return $user;

          if($user == null)
          return redirect()->back()->with(['success'=>'Reset Code was sent to your email.']);

        $reminder = Reminder::exists($user) ?: Reminder::create($user);
        $this->sendEmail($user, $reminder->code);
          return redirect()->back()->with(['success'=>'Reset Code was sent to your email.']);
    }

    public function resetPassword($email,$resetCode){
       //return "$email:$resetCode";
       $user = User::byEmail($email);
      //$sentinelUser = Sentinel::findById($user->id);
        if(empty($user))
            abort(404);
        $reminder = Reminder::exists($user);
        //print_r($reminder);
        if($reminder = Reminder::exists($user))
        {
          if($resetCode == $reminder->code)
              return view('authentication.reset-password');
            else
              return redirect('/');
        }
        else
        {
            return redirect('/');
        }
        //return $user;
    }

    public function postResetPassword(Request $request,$email,$resetCode)
    {
      $this->validate($request, ['password'=>'confirmed|required|min:5|max:10',
      'password_confirmation'=>'required|min:5|max:10'
      ]);
      $user = User::byEmail($email);
      //$sentinelUser = Sentinel::findById($user->id);
       if(empty($user))
           abort(404);
       $reminder = Reminder::exists($user);
       //print_r($reminder);
       if($reminder = Reminder::exists($user))
       {
         if($resetCode == $reminder->code){

             Reminder::complete($user,$resetCode,$request->password);

             return redirect('/login')->with('success','Please login with your new password.');
          }
           else{
             return redirect('/');
           }

       }
       else
       {
           return redirect('/');
       }
      //return $user;
      //return $request->all();
    }

    private function sendEmail($user, $code)
    {
        Mail::send('emails.forgot-password',[
            'user' => $user,
            'code' => $code
        ],function($message) use($user){
            $message->to($user->email);

            $message->subject("Hello $user->first_name, Reset your password.");
        });
    }
}
