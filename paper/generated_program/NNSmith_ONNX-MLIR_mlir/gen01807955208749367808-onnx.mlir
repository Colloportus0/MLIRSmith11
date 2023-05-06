module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [2 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(0 : i64) : i64
    %25 = llvm.mlir.constant(-1 : i64) : i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(4 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.constant(8 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<i32>
    %36 = llvm.getelementptr %35[%34] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.sub %38, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.urem %45, %38  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %41, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %33, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %30, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%67 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb10
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%72 : i64)
  ^bb5(%75: i64):  // 2 preds: ^bb4, ^bb9
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%77 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb8
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %82 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(4 : index) : i64
    %84 = llvm.mul %65, %83  : i64
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mul %70, %85  : i64
    %87 = llvm.add %84, %86  : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mul %75, %88  : i64
    %90 = llvm.add %87, %89  : i64
    %91 = llvm.add %90, %80  : i64
    %92 = llvm.getelementptr %82[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(2 : index) : i64
    %96 = llvm.mul %26, %95  : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %70, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %26, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %80  : i64
    %104 = llvm.getelementptr %94[%103] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.icmp "slt" %93, %105 : i32
    %107 = llvm.select %106, %93, %105 : i1, i32
    %108 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %65, %109  : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mul %70, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mul %75, %114  : i64
    %116 = llvm.add %113, %115  : i64
    %117 = llvm.add %116, %80  : i64
    %118 = llvm.getelementptr %108[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %107, %118 : !llvm.ptr<i32>
    %119 = llvm.add %80, %79  : i64
    llvm.br ^bb7(%119 : i64)
  ^bb9:  // pred: ^bb7
    %120 = llvm.add %75, %74  : i64
    llvm.br ^bb5(%120 : i64)
  ^bb10:  // pred: ^bb5
    %121 = llvm.add %70, %69  : i64
    llvm.br ^bb3(%121 : i64)
  ^bb11:  // pred: ^bb3
    %122 = llvm.add %65, %64  : i64
    llvm.br ^bb1(%122 : i64)
  ^bb12:  // pred: ^bb1
    %123 = llvm.mlir.constant(2 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    %127 = llvm.mlir.constant(2 : index) : i64
    %128 = llvm.mlir.constant(4 : index) : i64
    %129 = llvm.mlir.null : !llvm.ptr<i64>
    %130 = llvm.getelementptr %129[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.ptrtoint %130 : !llvm.ptr<i64> to i64
    %132 = llvm.mlir.constant(16 : index) : i64
    %133 = llvm.add %131, %132  : i64
    %134 = llvm.call @malloc(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i64> to i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.sub %132, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.urem %139, %132  : i64
    %141 = llvm.sub %139, %140  : i64
    %142 = llvm.inttoptr %141 : i64 to !llvm.ptr<i64>
    %143 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %144 = llvm.insertvalue %135, %143[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.insertvalue %146, %145[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %148 = llvm.insertvalue %123, %147[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %149 = llvm.insertvalue %124, %148[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %150 = llvm.insertvalue %125, %149[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %151 = llvm.insertvalue %127, %150[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %152 = llvm.insertvalue %125, %151[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %153 = llvm.insertvalue %126, %152[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%154 : i64)
  ^bb13(%157: i64):  // 2 preds: ^bb12, ^bb20
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%159 : i64)
  ^bb15(%162: i64):  // 2 preds: ^bb14, ^bb19
    %163 = llvm.icmp "slt" %162, %160 : i64
    llvm.cond_br %163, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%164 : i64)
  ^bb17(%167: i64):  // 2 preds: ^bb16, ^bb18
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %169 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %157, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %162, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.add %174, %167  : i64
    %176 = llvm.getelementptr %169[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %176 : !llvm.ptr<i64>
    %177 = llvm.add %167, %166  : i64
    llvm.br ^bb17(%177 : i64)
  ^bb19:  // pred: ^bb17
    %178 = llvm.add %162, %161  : i64
    llvm.br ^bb15(%178 : i64)
  ^bb20:  // pred: ^bb15
    %179 = llvm.add %157, %156  : i64
    llvm.br ^bb13(%179 : i64)
  ^bb21:  // pred: ^bb13
    %180 = llvm.mlir.constant(0 : index) : i64
    %181 = llvm.mlir.constant(2 : index) : i64
    %182 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%180 : i64)
  ^bb22(%183: i64):  // 2 preds: ^bb21, ^bb32
    %184 = llvm.icmp "slt" %183, %181 : i64
    llvm.cond_br %184, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %185 = llvm.mlir.constant(0 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%185 : i64)
  ^bb24(%188: i64):  // 2 preds: ^bb23, ^bb31
    %189 = llvm.icmp "slt" %188, %186 : i64
    llvm.cond_br %189, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%190 : i64)
  ^bb26(%193: i64):  // 2 preds: ^bb25, ^bb30
    %194 = llvm.icmp "slt" %193, %191 : i64
    llvm.cond_br %194, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %195 = llvm.mlir.constant(0 : index) : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%195 : i64)
  ^bb28(%198: i64):  // 2 preds: ^bb27, ^bb29
    %199 = llvm.icmp "slt" %198, %196 : i64
    llvm.cond_br %199, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %200 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mul %183, %201  : i64
    %203 = llvm.mlir.constant(4 : index) : i64
    %204 = llvm.mul %188, %203  : i64
    %205 = llvm.add %202, %204  : i64
    %206 = llvm.mlir.constant(2 : index) : i64
    %207 = llvm.mul %193, %206  : i64
    %208 = llvm.add %205, %207  : i64
    %209 = llvm.add %208, %198  : i64
    %210 = llvm.getelementptr %200[%209] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %211 = llvm.load %210 : !llvm.ptr<i32>
    %212 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %183, %213  : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mul %188, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.add %217, %198  : i64
    %219 = llvm.getelementptr %212[%218] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %220 = llvm.load %219 : !llvm.ptr<i64>
    %221 = llvm.icmp "slt" %220, %24 : i64
    %222 = llvm.select %221, %24, %220 : i1, i64
    %223 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(4 : index) : i64
    %225 = llvm.mul %183, %224  : i64
    %226 = llvm.mlir.constant(4 : index) : i64
    %227 = llvm.mul %188, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.mlir.constant(2 : index) : i64
    %230 = llvm.mul %222, %229  : i64
    %231 = llvm.add %228, %230  : i64
    %232 = llvm.add %231, %198  : i64
    %233 = llvm.getelementptr %223[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.load %233 : !llvm.ptr<i32>
    %235 = llvm.icmp "sgt" %211, %234 : i32
    %236 = llvm.select %235, %193, %222 : i1, i64
    %237 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %183, %238  : i64
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mul %188, %240  : i64
    %242 = llvm.add %239, %241  : i64
    %243 = llvm.add %242, %198  : i64
    %244 = llvm.getelementptr %237[%243] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %236, %244 : !llvm.ptr<i64>
    %245 = llvm.add %198, %197  : i64
    llvm.br ^bb28(%245 : i64)
  ^bb30:  // pred: ^bb28
    %246 = llvm.add %193, %192  : i64
    llvm.br ^bb26(%246 : i64)
  ^bb31:  // pred: ^bb26
    %247 = llvm.add %188, %187  : i64
    llvm.br ^bb24(%247 : i64)
  ^bb32:  // pred: ^bb24
    %248 = llvm.add %183, %182  : i64
    llvm.br ^bb22(%248 : i64)
  ^bb33:  // pred: ^bb22
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(4 : index) : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.constant(8 : index) : i64
    %257 = llvm.mlir.null : !llvm.ptr<i32>
    %258 = llvm.getelementptr %257[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %259 = llvm.ptrtoint %258 : !llvm.ptr<i32> to i64
    %260 = llvm.mlir.constant(16 : index) : i64
    %261 = llvm.add %259, %260  : i64
    %262 = llvm.call @malloc(%261) : (i64) -> !llvm.ptr<i8>
    %263 = llvm.bitcast %262 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i32> to i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.sub %260, %265  : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.urem %267, %260  : i64
    %269 = llvm.sub %267, %268  : i64
    %270 = llvm.inttoptr %269 : i64 to !llvm.ptr<i32>
    %271 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %272 = llvm.insertvalue %263, %271[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %270, %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.mlir.constant(0 : index) : i64
    %275 = llvm.insertvalue %274, %273[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %255, %279[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %252, %281[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %253, %282[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%284 : i64)
  ^bb34(%287: i64):  // 2 preds: ^bb33, ^bb44
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%289 : i64)
  ^bb36(%292: i64):  // 2 preds: ^bb35, ^bb43
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%294 : i64)
  ^bb38(%297: i64):  // 2 preds: ^bb37, ^bb42
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%299 : i64)
  ^bb40(%302: i64):  // 2 preds: ^bb39, ^bb41
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %304 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(4 : index) : i64
    %306 = llvm.mul %287, %305  : i64
    %307 = llvm.mlir.constant(4 : index) : i64
    %308 = llvm.mul %292, %307  : i64
    %309 = llvm.add %306, %308  : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %297, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.add %312, %302  : i64
    %314 = llvm.getelementptr %304[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %315 = llvm.load %314 : !llvm.ptr<i32>
    %316 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mul %287, %317  : i64
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mul %292, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mul %297, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.add %324, %302  : i64
    %326 = llvm.getelementptr %316[%325] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %327 = llvm.load %326 : !llvm.ptr<i32>
    %328 = llvm.sub %315, %327  : i32
    %329 = llvm.extractvalue %283[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mul %287, %330  : i64
    %332 = llvm.mlir.constant(4 : index) : i64
    %333 = llvm.mul %292, %332  : i64
    %334 = llvm.add %331, %333  : i64
    %335 = llvm.mlir.constant(2 : index) : i64
    %336 = llvm.mul %297, %335  : i64
    %337 = llvm.add %334, %336  : i64
    %338 = llvm.add %337, %302  : i64
    %339 = llvm.getelementptr %329[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %328, %339 : !llvm.ptr<i32>
    %340 = llvm.add %302, %301  : i64
    llvm.br ^bb40(%340 : i64)
  ^bb42:  // pred: ^bb40
    %341 = llvm.add %297, %296  : i64
    llvm.br ^bb38(%341 : i64)
  ^bb43:  // pred: ^bb38
    %342 = llvm.add %292, %291  : i64
    llvm.br ^bb36(%342 : i64)
  ^bb44:  // pred: ^bb36
    %343 = llvm.add %287, %286  : i64
    llvm.br ^bb34(%343 : i64)
  ^bb45:  // pred: ^bb34
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(4 : index) : i64
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mlir.constant(8 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i32>
    %353 = llvm.getelementptr %352[%351] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i32> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i32> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i32>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %344, %370[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %345, %371[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %346, %372[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %347, %373[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %350, %374[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %347, %376[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %348, %377[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%379 : i64)
  ^bb46(%382: i64):  // 2 preds: ^bb45, ^bb56
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%384 : i64)
  ^bb48(%387: i64):  // 2 preds: ^bb47, ^bb55
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%389 : i64)
  ^bb50(%392: i64):  // 2 preds: ^bb49, ^bb54
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(2 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%394 : i64)
  ^bb52(%397: i64):  // 2 preds: ^bb51, ^bb53
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %399 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.mlir.constant(4 : index) : i64
    %401 = llvm.mul %382, %400  : i64
    %402 = llvm.mlir.constant(4 : index) : i64
    %403 = llvm.mul %387, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.mlir.constant(2 : index) : i64
    %406 = llvm.mul %392, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.add %407, %397  : i64
    %409 = llvm.getelementptr %399[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.load %409 : !llvm.ptr<i32>
    %411 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mul %397, %412  : i64
    %414 = llvm.mlir.constant(4 : index) : i64
    %415 = llvm.mul %387, %414  : i64
    %416 = llvm.add %413, %415  : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mul %392, %417  : i64
    %419 = llvm.add %416, %418  : i64
    %420 = llvm.add %419, %382  : i64
    %421 = llvm.getelementptr %411[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %410, %421 : !llvm.ptr<i32>
    %422 = llvm.add %397, %396  : i64
    llvm.br ^bb52(%422 : i64)
  ^bb54:  // pred: ^bb52
    %423 = llvm.add %392, %391  : i64
    llvm.br ^bb50(%423 : i64)
  ^bb55:  // pred: ^bb50
    %424 = llvm.add %387, %386  : i64
    llvm.br ^bb48(%424 : i64)
  ^bb56:  // pred: ^bb48
    %425 = llvm.add %382, %381  : i64
    llvm.br ^bb46(%425 : i64)
  ^bb57:  // pred: ^bb46
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.constant(8 : index) : i64
    %434 = llvm.mlir.null : !llvm.ptr<i32>
    %435 = llvm.getelementptr %434[%433] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %436 = llvm.ptrtoint %435 : !llvm.ptr<i32> to i64
    %437 = llvm.mlir.constant(16 : index) : i64
    %438 = llvm.add %436, %437  : i64
    %439 = llvm.call @malloc(%438) : (i64) -> !llvm.ptr<i8>
    %440 = llvm.bitcast %439 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %441 = llvm.ptrtoint %440 : !llvm.ptr<i32> to i64
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.sub %437, %442  : i64
    %444 = llvm.add %441, %443  : i64
    %445 = llvm.urem %444, %437  : i64
    %446 = llvm.sub %444, %445  : i64
    %447 = llvm.inttoptr %446 : i64 to !llvm.ptr<i32>
    %448 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %449 = llvm.insertvalue %440, %448[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %447, %449[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.insertvalue %451, %450[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %428, %454[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %429, %455[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %432, %456[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %431, %457[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %429, %458[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %430, %459[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%461 : i64)
  ^bb58(%464: i64):  // 2 preds: ^bb57, ^bb68
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%466 : i64)
  ^bb60(%469: i64):  // 2 preds: ^bb59, ^bb67
    %470 = llvm.icmp "slt" %469, %467 : i64
    llvm.cond_br %470, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%471 : i64)
  ^bb62(%474: i64):  // 2 preds: ^bb61, ^bb66
    %475 = llvm.icmp "slt" %474, %472 : i64
    llvm.cond_br %475, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%476 : i64)
  ^bb64(%479: i64):  // 2 preds: ^bb63, ^bb65
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %481 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %482 = llvm.mlir.constant(4 : index) : i64
    %483 = llvm.mul %464, %482  : i64
    %484 = llvm.mlir.constant(4 : index) : i64
    %485 = llvm.mul %469, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mul %474, %487  : i64
    %489 = llvm.add %486, %488  : i64
    %490 = llvm.add %489, %479  : i64
    %491 = llvm.getelementptr %481[%490] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %492 = llvm.load %491 : !llvm.ptr<i32>
    %493 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mul %464, %494  : i64
    %496 = llvm.mlir.constant(4 : index) : i64
    %497 = llvm.mul %469, %496  : i64
    %498 = llvm.add %495, %497  : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %474, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.add %501, %479  : i64
    %503 = llvm.getelementptr %493[%502] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %504 = llvm.load %503 : !llvm.ptr<i32>
    %505 = llvm.icmp "slt" %492, %504 : i32
    %506 = llvm.select %505, %492, %504 : i1, i32
    %507 = llvm.extractvalue %460[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %464, %508  : i64
    %510 = llvm.mlir.constant(4 : index) : i64
    %511 = llvm.mul %469, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mul %474, %513  : i64
    %515 = llvm.add %512, %514  : i64
    %516 = llvm.add %515, %479  : i64
    %517 = llvm.getelementptr %507[%516] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %506, %517 : !llvm.ptr<i32>
    %518 = llvm.add %479, %478  : i64
    llvm.br ^bb64(%518 : i64)
  ^bb66:  // pred: ^bb64
    %519 = llvm.add %474, %473  : i64
    llvm.br ^bb62(%519 : i64)
  ^bb67:  // pred: ^bb62
    %520 = llvm.add %469, %468  : i64
    llvm.br ^bb60(%520 : i64)
  ^bb68:  // pred: ^bb60
    %521 = llvm.add %464, %463  : i64
    llvm.br ^bb58(%521 : i64)
  ^bb69:  // pred: ^bb58
    %522 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %523 = llvm.insertvalue %153, %522[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %524 = llvm.insertvalue %283, %523[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %525 = llvm.insertvalue %460, %524[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %525 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v0_0"], llvm.emit_c_interface, output_names = ["v6_0", "v5_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.extractvalue %85[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %89 = llvm.mlir.constant(3 : i64) : i64
    %90 = llvm.mlir.constant(24 : i64) : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(3 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(0 : i64) : i64
    %119 = llvm.getelementptr %92[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.mlir.constant(4 : i64) : i64
    %121 = llvm.call @omTensorCreateUntyped(%120) : (i64) -> !llvm.ptr<i8>
    %122 = llvm.mlir.constant(1 : i64) : i64
    %123 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.bitcast %123 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %125 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.bitcast %125 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%121, %122, %124, %126) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %127 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%121, %127) : (!llvm.ptr<i8>, i64) -> ()
    %128 = llvm.call @omTensorGetShape(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %129 = llvm.call @omTensorGetStrides(%121) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %130 = llvm.mlir.constant(0 : i64) : i64
    %131 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %128[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %129[%130] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %128[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %129[%135] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.mlir.constant(2 : i64) : i64
    %141 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %128[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.getelementptr %129[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %144 : !llvm.ptr<i64>
    %145 = llvm.mlir.constant(3 : i64) : i64
    %146 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %128[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.getelementptr %129[%145] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %149 : !llvm.ptr<i64>
    %150 = llvm.mlir.constant(1 : i64) : i64
    %151 = llvm.getelementptr %92[%150] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %121, %151 : !llvm.ptr<ptr<i8>>
    %152 = llvm.mlir.constant(4 : i64) : i64
    %153 = llvm.call @omTensorCreateUntyped(%152) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.extractvalue %88[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.bitcast %155 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %157 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.bitcast %157 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%153, %154, %156, %158) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %159 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%153, %159) : (!llvm.ptr<i8>, i64) -> ()
    %160 = llvm.call @omTensorGetShape(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %161 = llvm.call @omTensorGetStrides(%153) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %162 = llvm.mlir.constant(0 : i64) : i64
    %163 = llvm.extractvalue %88[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.getelementptr %160[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %163, %164 : !llvm.ptr<i64>
    %165 = llvm.extractvalue %88[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.getelementptr %161[%162] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %165, %166 : !llvm.ptr<i64>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.getelementptr %160[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %168, %169 : !llvm.ptr<i64>
    %170 = llvm.extractvalue %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.getelementptr %161[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %171 : !llvm.ptr<i64>
    %172 = llvm.mlir.constant(2 : i64) : i64
    %173 = llvm.extractvalue %88[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.getelementptr %160[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %173, %174 : !llvm.ptr<i64>
    %175 = llvm.extractvalue %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.getelementptr %161[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %175, %176 : !llvm.ptr<i64>
    %177 = llvm.mlir.constant(3 : i64) : i64
    %178 = llvm.extractvalue %88[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %160[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.extractvalue %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.getelementptr %161[%177] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %180, %181 : !llvm.ptr<i64>
    %182 = llvm.mlir.constant(2 : i64) : i64
    %183 = llvm.getelementptr %92[%182] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %153, %183 : !llvm.ptr<ptr<i8>>
    %184 = llvm.call @omTensorListCreate(%92, %89, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %184 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

