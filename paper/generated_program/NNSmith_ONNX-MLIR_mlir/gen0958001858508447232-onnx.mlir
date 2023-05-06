module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(-2147483648 : i32) : i32
    %13 = llvm.mlir.constant(0 : i32) : i32
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %16 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %16, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %17, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(2 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.mlir.constant(4 : index) : i64
    %40 = llvm.mlir.null : !llvm.ptr<i32>
    %41 = llvm.getelementptr %40[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(16 : index) : i64
    %44 = llvm.add %42, %43  : i64
    %45 = llvm.call @malloc(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.sub %43, %48  : i64
    %50 = llvm.add %47, %49  : i64
    %51 = llvm.urem %50, %43  : i64
    %52 = llvm.sub %50, %51  : i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr<i32>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %55 = llvm.insertvalue %46, %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %34, %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %35, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %36, %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %37, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.insertvalue %35, %62[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %36, %63[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %37, %64[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.insertvalue %38, %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%67 : i64)
  ^bb1(%70: i64):  // 2 preds: ^bb0, ^bb11
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%72 : i64)
  ^bb3(%75: i64):  // 2 preds: ^bb2, ^bb10
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%77 : i64)
  ^bb5(%80: i64):  // 2 preds: ^bb4, ^bb9
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%82 : i64)
  ^bb7(%85: i64):  // 2 preds: ^bb6, ^bb8
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %87 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %70, %88  : i64
    %90 = llvm.add %89, %75  : i64
    %91 = llvm.add %90, %80  : i64
    %92 = llvm.add %91, %85  : i64
    %93 = llvm.getelementptr %87[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.sub %13, %94  : i32
    %96 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %70, %97  : i64
    %99 = llvm.add %98, %75  : i64
    %100 = llvm.add %99, %80  : i64
    %101 = llvm.add %100, %85  : i64
    %102 = llvm.getelementptr %96[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %95, %102 : !llvm.ptr<i32>
    %103 = llvm.add %85, %84  : i64
    llvm.br ^bb7(%103 : i64)
  ^bb9:  // pred: ^bb7
    %104 = llvm.add %80, %79  : i64
    llvm.br ^bb5(%104 : i64)
  ^bb10:  // pred: ^bb5
    %105 = llvm.add %75, %74  : i64
    llvm.br ^bb3(%105 : i64)
  ^bb11:  // pred: ^bb3
    %106 = llvm.add %70, %69  : i64
    llvm.br ^bb1(%106 : i64)
  ^bb12:  // pred: ^bb1
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(4 : index) : i64
    %113 = llvm.mlir.constant(8 : index) : i64
    %114 = llvm.mlir.null : !llvm.ptr<i32>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %116 = llvm.ptrtoint %115 : !llvm.ptr<i32> to i64
    %117 = llvm.mlir.constant(16 : index) : i64
    %118 = llvm.add %116, %117  : i64
    %119 = llvm.call @malloc(%118) : (i64) -> !llvm.ptr<i8>
    %120 = llvm.bitcast %119 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<i32> to i64
    %122 = llvm.mlir.constant(1 : index) : i64
    %123 = llvm.sub %117, %122  : i64
    %124 = llvm.add %121, %123  : i64
    %125 = llvm.urem %124, %117  : i64
    %126 = llvm.sub %124, %125  : i64
    %127 = llvm.inttoptr %126 : i64 to !llvm.ptr<i32>
    %128 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %129 = llvm.insertvalue %120, %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %127, %129[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.insertvalue %131, %130[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %107, %132[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %108, %133[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %109, %134[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %110, %135[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %112, %136[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %109, %137[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %110, %138[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %111, %139[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%141 : i64)
  ^bb13(%144: i64):  // 2 preds: ^bb12, ^bb23
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%146 : i64)
  ^bb15(%149: i64):  // 2 preds: ^bb14, ^bb22
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.mlir.constant(2 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%151 : i64)
  ^bb17(%154: i64):  // 2 preds: ^bb16, ^bb21
    %155 = llvm.icmp "slt" %154, %152 : i64
    llvm.cond_br %155, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%156 : i64)
  ^bb19(%159: i64):  // 2 preds: ^bb18, ^bb20
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %161 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mul %144, %162  : i64
    %164 = llvm.add %163, %149  : i64
    %165 = llvm.add %164, %14  : i64
    %166 = llvm.add %165, %159  : i64
    %167 = llvm.getelementptr %161[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %149, %170  : i64
    %172 = llvm.add %171, %154  : i64
    %173 = llvm.add %172, %159  : i64
    %174 = llvm.getelementptr %169[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.sub %168, %175  : i32
    %177 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %144, %178  : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %149, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.add %182, %154  : i64
    %184 = llvm.add %183, %159  : i64
    %185 = llvm.getelementptr %177[%184] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %176, %185 : !llvm.ptr<i32>
    %186 = llvm.add %159, %158  : i64
    llvm.br ^bb19(%186 : i64)
  ^bb21:  // pred: ^bb19
    %187 = llvm.add %154, %153  : i64
    llvm.br ^bb17(%187 : i64)
  ^bb22:  // pred: ^bb17
    %188 = llvm.add %149, %148  : i64
    llvm.br ^bb15(%188 : i64)
  ^bb23:  // pred: ^bb15
    %189 = llvm.add %144, %143  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb24:  // pred: ^bb13
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mlir.null : !llvm.ptr<i32>
    %196 = llvm.getelementptr %195[%194] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i32> to i64
    %198 = llvm.mlir.constant(16 : index) : i64
    %199 = llvm.add %197, %198  : i64
    %200 = llvm.call @malloc(%199) : (i64) -> !llvm.ptr<i8>
    %201 = llvm.bitcast %200 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i32> to i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.sub %198, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.urem %205, %198  : i64
    %207 = llvm.sub %205, %206  : i64
    %208 = llvm.inttoptr %207 : i64 to !llvm.ptr<i32>
    %209 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %210 = llvm.insertvalue %201, %209[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %211 = llvm.insertvalue %208, %210[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.insertvalue %212, %211[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %214 = llvm.insertvalue %190, %213[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %215 = llvm.insertvalue %191, %214[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %192, %215[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.insertvalue %191, %216[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %218 = llvm.insertvalue %192, %217[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %193, %218[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%220 : i64)
  ^bb25(%223: i64):  // 2 preds: ^bb24, ^bb32
    %224 = llvm.icmp "slt" %223, %221 : i64
    llvm.cond_br %224, ^bb26, ^bb33
  ^bb26:  // pred: ^bb25
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%225 : i64)
  ^bb27(%228: i64):  // 2 preds: ^bb26, ^bb31
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb28, ^bb32
  ^bb28:  // pred: ^bb27
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%230 : i64)
  ^bb29(%233: i64):  // 2 preds: ^bb28, ^bb30
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb30, ^bb31
  ^bb30:  // pred: ^bb29
    %235 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %236 = llvm.mlir.constant(2 : index) : i64
    %237 = llvm.mul %223, %236  : i64
    %238 = llvm.add %237, %228  : i64
    %239 = llvm.add %238, %233  : i64
    %240 = llvm.getelementptr %235[%239] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %240 : !llvm.ptr<i32>
    %241 = llvm.add %233, %232  : i64
    llvm.br ^bb29(%241 : i64)
  ^bb31:  // pred: ^bb29
    %242 = llvm.add %228, %227  : i64
    llvm.br ^bb27(%242 : i64)
  ^bb32:  // pred: ^bb27
    %243 = llvm.add %223, %222  : i64
    llvm.br ^bb25(%243 : i64)
  ^bb33:  // pred: ^bb25
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%244 : i64)
  ^bb34(%247: i64):  // 2 preds: ^bb33, ^bb44
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%249 : i64)
  ^bb36(%252: i64):  // 2 preds: ^bb35, ^bb43
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%254 : i64)
  ^bb38(%257: i64):  // 2 preds: ^bb37, ^bb42
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %259 = llvm.mlir.constant(0 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%259 : i64)
  ^bb40(%262: i64):  // 2 preds: ^bb39, ^bb41
    %263 = llvm.icmp "slt" %262, %260 : i64
    llvm.cond_br %263, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %264 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(2 : index) : i64
    %266 = llvm.mul %247, %265  : i64
    %267 = llvm.add %266, %252  : i64
    %268 = llvm.add %267, %257  : i64
    %269 = llvm.add %268, %262  : i64
    %270 = llvm.getelementptr %264[%269] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.load %270 : !llvm.ptr<i32>
    %272 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mul %247, %273  : i64
    %275 = llvm.add %274, %252  : i64
    %276 = llvm.add %275, %257  : i64
    %277 = llvm.getelementptr %272[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %278 = llvm.load %277 : !llvm.ptr<i32>
    %279 = llvm.icmp "sgt" %278, %271 : i32
    %280 = llvm.select %279, %278, %271 : i1, i32
    %281 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mul %247, %282  : i64
    %284 = llvm.add %283, %252  : i64
    %285 = llvm.add %284, %257  : i64
    %286 = llvm.getelementptr %281[%285] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %280, %286 : !llvm.ptr<i32>
    %287 = llvm.add %262, %261  : i64
    llvm.br ^bb40(%287 : i64)
  ^bb42:  // pred: ^bb40
    %288 = llvm.add %257, %256  : i64
    llvm.br ^bb38(%288 : i64)
  ^bb43:  // pred: ^bb38
    %289 = llvm.add %252, %251  : i64
    llvm.br ^bb36(%289 : i64)
  ^bb44:  // pred: ^bb36
    %290 = llvm.add %247, %246  : i64
    llvm.br ^bb34(%290 : i64)
  ^bb45:  // pred: ^bb34
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mlir.constant(8 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i1>
    %299 = llvm.getelementptr %298[%297] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i1> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i1> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i1>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %291, %316[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %292, %317[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %293, %318[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %294, %319[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %296, %320[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %293, %321[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %294, %322[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %295, %323[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%325 : i64)
  ^bb46(%328: i64):  // 2 preds: ^bb45, ^bb56
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(2 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%330 : i64)
  ^bb48(%333: i64):  // 2 preds: ^bb47, ^bb55
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%335 : i64)
  ^bb50(%338: i64):  // 2 preds: ^bb49, ^bb54
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%340 : i64)
  ^bb52(%343: i64):  // 2 preds: ^bb51, ^bb53
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %345 = llvm.extractvalue %219[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mul %333, %346  : i64
    %348 = llvm.add %347, %338  : i64
    %349 = llvm.add %348, %343  : i64
    %350 = llvm.getelementptr %345[%349] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %351 = llvm.load %350 : !llvm.ptr<i32>
    %352 = llvm.extractvalue %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mul %328, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %333, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.add %357, %338  : i64
    %359 = llvm.add %358, %343  : i64
    %360 = llvm.getelementptr %352[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.icmp "slt" %351, %361 : i32
    %363 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mul %328, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %333, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.add %368, %338  : i64
    %370 = llvm.add %369, %343  : i64
    %371 = llvm.getelementptr %363[%370] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %362, %371 : !llvm.ptr<i1>
    %372 = llvm.add %343, %342  : i64
    llvm.br ^bb52(%372 : i64)
  ^bb54:  // pred: ^bb52
    %373 = llvm.add %338, %337  : i64
    llvm.br ^bb50(%373 : i64)
  ^bb55:  // pred: ^bb50
    %374 = llvm.add %333, %332  : i64
    llvm.br ^bb48(%374 : i64)
  ^bb56:  // pred: ^bb48
    %375 = llvm.add %328, %327  : i64
    llvm.br ^bb46(%375 : i64)
  ^bb57:  // pred: ^bb46
    llvm.return %324 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

