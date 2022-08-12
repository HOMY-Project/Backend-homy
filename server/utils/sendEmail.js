import nodeMailer from 'nodemailer';

const sendEmail = async (email, token) => {
  const transporter = nodeMailer.createTransport({
    host: 'smtp.gmail.com',
    port: 587,
    secure: false,
    auth: {
      user: process.env.EMAIL,
      pass: process.env.EMAIL_PASSWORD,
    },
    tls: {
      rejectUnauthorized: false,
    },
  });
  const link = 'https://magnificent-hamster-8a7ccb.netlify.app/'
  await transporter.sendMail({
    from: process.env.EMAIL,
    to: email,
    subject: 'Reset password requested',
    html: `<h1>You can now reset password </h1>
    <p>${token}</p>
    <p>This link will expire in 10 minutes</p>
    <span>https://magnificent-hamster-8a7ccb.netlify.app</span>
    Click <a href="${link}">here</a> to reset your password`,
  });
};
export default sendEmail;
