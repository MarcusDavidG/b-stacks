interface Props321 { value: number; label: string; onChange: (v: number) => void; }
export const Component321 = ({ value, label, onChange }: Props321) => (
  <div className="component-321">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
